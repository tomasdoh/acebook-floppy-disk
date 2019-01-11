require 'rails_helper'
require_relative '../support/controller_test_helpers_spec.rb'

RSpec.describe CommentsController, type: :controller do
  describe "POST #create " do

    it "creates a comment in the db" do
      expect { create_comment }.to change { Comment.count }.by(1)
    end

    it "responds with 302" do
      create_comment
      expect(response).to have_http_status(302)
    end
  end
end
