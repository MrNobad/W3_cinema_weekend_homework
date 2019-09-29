require_relative('models/film')
require_relative('models/customer')
require_relative('models/ticket')

require('pry')

film1 = Film.new({ 'title' => 'Avengers: End Game', 'price' => 12 })
film1.save()
film2 = Film.new({ 'title' => 'Joker', 'price' => 18 })
film2.save()
film3 = Film.new({ 'title' => 'Ad Astra', 'price' => 16 })
film3.save()

customer1 = Customer.new({ 'name' => 'Tony', 'funds' => 50 })
customer1.save()
customer2 = Customer.new({ 'name' => 'Arthur', 'funds' => 75 })
customer2.save()
customer3 = Customer.new({ 'name' => 'Roy', 'funds' => 110 })
customer3.save()

ticket1 = Ticket.new({ 'film_id' => film1.id, 'customer_id' => customer1.id })
ticket1.save()
ticket2 = Ticket.new({ 'film_id' => film2.id, 'customer_id' => customer1.id })
ticket2.save()
ticket3 = Ticket.new({ 'film_id' => film3.id, 'customer_id' => customer1.id })
ticket3.save()






binding.pry
nil
