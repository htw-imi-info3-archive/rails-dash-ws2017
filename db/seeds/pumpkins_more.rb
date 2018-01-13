Pumpkin.create(species: 'Muscovado', carved: false, size: 3, weight: 3, price: 15)
Pumpkin.create(species: 'Olga Squash', carved: false, size: 2, weight: 3, price: 17)
Pumpkin.create(species: 'Atlantic giant', carved: false, size: 20, weight: 15, price: 17)

c = Customer.create(name: 'Maryam Mirzakhani')

p1 = Pumpkin.create(species: 'Carneval Squasch', carved: false, size: 1, weight: 4, price: 20)
p2 = Pumpkin.create(species: 'Quintale', carved: true, size: 5, weight: 10, price: 13)
o = c.orders.create
o.line_items.create(pumpkin: p1, amount: 4)
o.line_items.create(pumpkin: p2, amount: 3)


c1 = Customer.create(name: 'Mae Jemison')

p3 = Pumpkin.create(species: 'Trompete von Albenga', carved: true, size: 8, weight: 14, price: 3)
p4 = Pumpkin.create(species: 'Violina', carved: false, size: 4, weight: 6, price: 14)
o1 = c1.orders.create
o1.line_items.create(pumpkin: p3, amount: 2)
o1.line_items.create(pumpkin: p4, amount: 1)

o2 = c1.orders.create
o2.line_items.create(pumpkin: p1, amount: 3)
o2.line_items.create(pumpkin:p3, amount: 2)
