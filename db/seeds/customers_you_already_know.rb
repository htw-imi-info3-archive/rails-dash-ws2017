a = Customer.create(name: 'Johny Walker')
x = Customer.create(name: 'Bond. James Bond')

p1 = Pumpkin.create(species: 'BestOfTheBest', price: 99)
p2 = Pumpkin.create(species: 'Butternut', price: 300)
p3 = Pumpkin.create(species: 'Sapporo', price: 9)
p4 = Pumpkin.create(species: 'Cinderella', price: 15)

o3 = a.orders.create
o3.line_items.create(pumpkin: p1, amount: 2)
o3.line_items.create(pumpkin: p2, amount: 1)

o4 = x.orders.create
o4.line_items.create(pumpkin: p3, amount: 4)
o4.line_items.create(pumpkin: p4, amount: 5)
