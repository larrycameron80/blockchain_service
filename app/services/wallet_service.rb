class WalletService
  class << self
    TOKEN_FOR_APPROVE = 10**25

    def create(profile_id, profile_type, *params)
      @client = EthereumClient.new(Settings.http_path)
      ActiveRecord::Base.transaction do

        @profile = create_model_and_wallet(profile_id, profile_type)
      
        send_ether

        if profile_type == "Owner"
          if params.first[:root] == "false" 
            DeployContractService.call(params.first[:referrer_profile_id], profile_id)
            @profile.update(root: "false")
          else
            @profile.update(root: "true")
          end
        end
      end

      return @profile
    end

    def update(profile_id, profile_type, *params)
      model = profile_type.capitalize.constantize
      profile = model.find_by_profile_id!(profile_id)
      profile.ethereum_wallet.update(private_hex: key.private_hex.downcase, 
                                     public_hex: key.public_hex.downcase, address: key.address.downcase)
    end

    private

      def key
        Eth::Key.new
      end

      def create_model_and_wallet(profile_id, profile_type)
        model = profile_type.capitalize.constantize   
        profile = model.create(profile_id: profile_id)
        key = Eth::Key.new
        profile.create_ethereum_wallet(private_hex: key.private_hex.downcase, 
                                       public_hex: key.public_hex.downcase, address: key.address.downcase)
        return profile
      end

      def send_ether
        key = Eth::Key.new(priv: Settings.priv_hex)
        address = @profile.ethereum_wallet.address
        #@client.eth_send_transaction({from: key.address, to: address, value: 0.01 * EthereumClient::WEI_IN_ETHER })
        @client.transfer(key, address, 10**16)
      end
  end
end