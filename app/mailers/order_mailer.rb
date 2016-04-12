class OrderMailer < ApplicationMailer
  default from: 'notifications@example.com'
  default to: 'rodosabc@gmail.com'
  def order_email(order)
    @order = order
    @line_items = order.line_items
    @total_price = 0
    @line_items.each do |line_item|
      @total_price += Product.find(line_item.product_id).price
    end
    mail(subject: 'Welcome to My Awesome Site')

  end
end
