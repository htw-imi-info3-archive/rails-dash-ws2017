c = Customer.create(name: 'Peter Dinklage')

p1 = Pumpkin.create(species: 'Sour Pumpkin', price: 5)
p2 = Pumpkin.create(species: 'Dope Pumpkin', price: 30)
o1 = c.orders.create
o1.line_items.create(pumpkin: p1, amount: 2)
o1.line_items.create(pumpkin: p2, amount: 6)

o2 = c.orders.create
o2.line_items.create(pumpkin: p1, amount: 2)
o2.line_items.create(pumpkin: p2, amount: 6)
