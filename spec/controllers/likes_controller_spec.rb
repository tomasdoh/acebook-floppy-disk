require 'rails_helper'
require_relative '../support/controller_test_helpers_spec.rb'

RSpec.describe LikesController, type: :controller do
  let(:test_post) { FactoryBot.create(:post) }
  let(:user) { FactoryBot.create(:user) }

  describe "POST #create " do
    it "responds with 302 if post created" do
      create_like
      expect(response).to have_http_status(302)
    end

    it "adds a like to the db" do
      expect { create_like }.to change { Like.count }.by(1)
    end
  end

  describe "DELETE #destroy " do
    let!(:like) { FactoryBot.create(:like) }

    it "responds with 302 if post deleted" do
      delete_like
      expect(response).to have_http_status(302)
    end

    it "deletes a like from the db" do
      expect { delete_like }.to change { Like.count }.by(-1)
    end
  end
end
