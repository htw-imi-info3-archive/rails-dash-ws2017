c = Customer.create(name: 'Grace Hopper')

p1 = Pumpkin.create(species: 'Hokkaido', price: 2)
p2 = Pumpkin.create(species: 'Butternut', price: 4)
o = c.orders.create
o.line_items.create(pumpkin: p1, amount: 4)
o.line_items.create(pumpkin: p2, amount: 3)
