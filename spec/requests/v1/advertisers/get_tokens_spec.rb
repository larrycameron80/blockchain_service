require "rails_helper"

RSpec.describe "Get tokens to wallet" do
  let(:profile_id) { rand(1..10) }
  let(:profile_type) { "Advertiser" }
  let(:amount) { rand(100..1000) }

  context "profile exist" do
    let!(:advertiser) { WalletService.create(profile_id, profile_type) }
    let(:priv_key) { advertiser.ethereum_wallet.private_hex }
    let(:token_service) { TokenService.new(priv_key) }

    before do 
      post get_tokens_v1_advertisers_path, params: { profile_id: profile_id, token_amount: amount }
    end

    it "recieves tokens to wallet" do
      expect(token_service.get_balance).to eq(amount)
    end 

    it "returns status :no_content" do
      expect(response).to have_http_status(:no_content)
    end
  end

  context "profile does not exist" do
    before do 
      post get_tokens_v1_advertisers_path, params: { profile_id: profile_id, token_amount: amount }
    end

    it "returns status :not_found" do
      expect(response).to have_http_status(:not_found)
    end
  end 
end
