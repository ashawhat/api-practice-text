class Message < ActiveRecord::Base
  before_create :send_message

  private

  def send_message
    response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC3e0af22b6b772460f352ba8c6586fbde/Messages.json'
      :user =>
      :password =>
      :payload => { :Body => body,
                    :To => to,
                    :From => from }
      ).execute
  end
end
