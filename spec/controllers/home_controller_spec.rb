require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  #describe "POST send_mail", js: true do
    #before(:example) { ActionMailer::Base.deliveries.clear }

    #it "sends email to admin" do
      #post :send_email, data: { name: "moeabdol",
                                #email: "admin.r99@gmail.com",
                                #message: "test email." }
      #expect(ActionMailer::Base.deliveries.size).to eq(1)
      #mail = ActionMailer::Base.deliveries.first
      #expect(mail.to).to eq(["mohd.a.saed@gmail.com"])
      #expect(mail.from).to eq(["app@moeabdol.com"])
      #expect(mail.subject).to eq("moeabdol has sent you an email")
      #expect(mail.body.to_s).to match(
        #"name:\nmoeabdol\nemail:\nadmin.r99@gmail.com\nmessage:\ntest email.")
    #end
  #end
end
