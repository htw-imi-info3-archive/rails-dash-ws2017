
c1 = Customer.create(name: "Grace Hopper")

p1 = Pumpkin.create(species: 'Flaschenkürbis', price: 2)
p2 = Pumpkin.create(species: 'Butternut', price: 4)
o1 = c1.orders.create
o1.line_items.create(pumpkin: p1, amount: 4)
o1.line_items.create(pumpkin: p2, amount: 3)


c2 = Customer.create(name: "Jane Doe")

p12 = Pumpkin.create(species: "Field", carved: false, size: 18, weight: 20, price: 70)
p13 = Pumpkin.create(species: "Delicate", carved: false, size: 4, weight: 5, price: 20)
p14= Pumpkin.create(species: "Turban", carved: false, size: 7, weight: 5, price: 14)
p15= Pumpkin.create(species: "Patty Pan", carved: false, size: 7, weight: 6, price: 14)
o2 = c2.orders.create
o2.line_items.create(pumpkin: p12, amount: 1)
o2.line_items.create(pumpkin: p13, amount: 3)
o2.line_items.create(pumpkin: p14, amount: 2)
o2.line_items.create(pumpkin: p15, amount: 10)


c3 = Customer.create(name: "Bat Man")

p12 = Pumpkin.create(species: "Field", carved: false, size: 18, weight: 20, price: 70)

o3 = c3.orders.create
o3.line_items.create(pumpkin: p12, amount: 1)



c4 = Customer.create(name: "Super Man")

p6 = Pumpkin.create(species: "Spaghetti", carved: false, size: 7, weight: 6, price: 16)
p7 = Pumpkin.create(species: "Sugar Pie", carved: false, size: 8, weight: 9, price: 18)
p8 = Pumpkin.create(species: "Butternut", carved: true, size: 6, weight: 7, price: 15)
o4 = c4.orders.create
o4.line_items.create(pumpkin: p6, amount: 5)
o4.line_items.create(pumpkin: p7, amount: 1)
o4.line_items.create(pumpkin: p8, amount: 20)




# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

o5 = c4.orders.create
o5.line_items.create(pumpkin: p6, amount: 2)
o5.line_items.create(pumpkin: p1, amount: 21)
o5.line_items.create(pumpkin: p2, amount: 3)
