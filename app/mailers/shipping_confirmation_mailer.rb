class ShippingConfirmationMailer < ApplicationMailer
  default from:"dreamcover2023@gmail.com'

  def shipping_confirmation_email
    @user = params [:user]
    @shipment = params [: shipment]
    mail(to: "sigmatconsultancy@gmail.com"u, subject: "Your shipment is on it's way")
  end
end