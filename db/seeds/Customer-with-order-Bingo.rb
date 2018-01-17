c = Customer.create(name: 'Chang Pham')

p1 = Pumpkin.create(species: 'Bingo', price: 3)
o = c.orders.create
o.line_items.create(pumpkin: p1, amount: 3)
