# app/mailers/order_mailer.rb
class OrderMailer < ApplicationMailer
    def order_confirmation(user)
      @user = user
      mail(to: @user.email, subject: 'Order Confirmation')
    end
  end
  