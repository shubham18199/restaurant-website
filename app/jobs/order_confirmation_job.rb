# app/jobs/order_confirmation_job.rb
class OrderConfirmationJob < ApplicationJob
  queue_as :default

  def perform(user)
    OrderMailer.order_confirmation(user).deliver_now
  end
end
