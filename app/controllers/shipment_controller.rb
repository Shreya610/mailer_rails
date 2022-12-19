class ShipmentController < ApplicationController
  def create
    @shipment = Shipment.new(shipment params)
    @user = user. find by(id: shipment params [:user id])

    if @shipment.save
      ShippingConfirmationMailer.with(user: @user, shipment: @shipment). shipping_confirmation_email.deliver_later

    end
  end
  private
  def shipment_params
    params.require(:shipment) -permit(:user_id, :item, :price)
  end
end