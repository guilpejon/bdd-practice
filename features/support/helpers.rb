require 'httparty'

module Helpers
  def destroy_user_based_on_email(email)
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
