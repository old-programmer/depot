#---
# http://www.pragmaticprogrammer.com/titles/rails4 - for more book information.
#
# rails runner script/load_orders.rb
#---

Order.transaction do
  (2..98).each do |i|
    Order.create(name: "Customer #{i}", address: "#{i} Main Street", email: "customer-#{i}@example.com", pay_type: "Check")
  end
end
