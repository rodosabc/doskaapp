class OrderMailer < ApplicationMailer
  default from: 'svoyadoskateam@svoyadoska.ru'
  def order_email(order)
    @order = order
    @line_items = order.line_items
    @total_price = 0
    @line_items.each do |line_item|
      @total_price += line_item.final_price
    end
    mail(subject: "ЗАКАЗ № #{@order.id}")
    end
  def buyer_email(order)

    @order = order
    @line_items = order.line_items
    @total_price = 0
    @line_items.each do |line_item|
      @total_price += line_item.final_price
    end
    mail(mail_to: @order.email,subject: 'SvoyaDoska: подтверждение заказа')
  end
end
