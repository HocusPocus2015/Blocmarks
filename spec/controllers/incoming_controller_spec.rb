require 'rails_helper'

RSpec.describe IncomingController, type: :controller do
  include Devise::TestHelpers

  let(:user) { User.create!(email:                 "incoming@user.com",
                            password:              "password",
                            password_confirmation: "password") }

  describe "POST #create" do
    before do
      sign_in user
      post :create, { "body-plain" => "https://www.tests.com",
                      "subject"    => "Testing",
                      "sender"     => user.email }
    end

    it "sets the topic of the bookmark from the email subject" do
      expect(Bookmark.last.topic.title).to eq("Testing")
    end

    it "sets the url of the bookmark from the email body" do
      expect(Bookmark.last.url).to eq("https://www.tests.com")
    end

    it "sets the user of the bookmark from the email sender" do
      expect(Bookmark.last.user.email).to eq("incoming@user.com")
    end
  end
end
