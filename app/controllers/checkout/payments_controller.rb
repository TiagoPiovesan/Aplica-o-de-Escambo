class Checkout::PaymentsController < ApplicationController
  def create

    # Email: c10593574729202533145@sandbox.pagseguro.com.br
    # Senha: 7mg5282mNKb2L3w9
    # Número: 4111111111111111 copiar
    # Bandeira: VISA Válido até: 12/2030 CVV: 123


    ad = Ad.find(params[:ad_id])
    ad.processing!

    order = Order.create( ad: ad, buyer_id: current_member.id )
    order.waiting!

    payment = PagSeguro::PaymentRequest.new

    payment.reference = order.id
    payment.redirect_url = site_ad_detail_url(ad)
    payment.notification_url = checkout_notifications_url # FIX LATER

    payment.items << {
      id: ad.id,
      description: ad.title,
      amount: ad.price.to_s.gsub(',','.')
    }

    response = payment.register

    if response.errors.any?
      redirect_to site_ad_detail_path(ad), alert: "Erro ao processar compra… Entre em contato com o SAC (xx) xxx.xxxx"
    else
      redirect_to response.url
    end

  end
end
