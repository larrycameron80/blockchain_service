require "rails_helper"

RSpec.describe "Get tokens to wallet" do
  let(:profile_id) { rand(1..10) }
  let(:profile_type) { "Owner" }
  let(:amount) { rand(100..1000) }
  let(:profile_params) { { root: true } }

  context "profile exist" do
    let!(:owner) { WalletService.create(profile_id, profile_type, profile_params) }
    let(:priv_key) { owner.ethereum_wallet.private_hex }
    let(:token_service) { TokenService.new(priv_key) }

    before do 
      post get_tokens_v1_owners_path, params: { profile_id: profile_id, token_amount: amount }
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
      post get_tokens_v1_owners_path, params: { profile_id: profile_id, token_amount: amount }
    end

    it "returns status :not_found" do
      expect(response).to have_http_status(:not_found)
    end
  end 
end
