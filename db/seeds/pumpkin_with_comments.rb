p1 = Pumpkin.create(species: 'Pumpkin with comments', carved: false, size: 5, weight: 7, price: 13)
p1.comments.create(title:"Best Pumpkin", content: "This is a really delicious pumpkin")
p1.comments.create(title:"Hard to carve", content: "The shape makes it difficult to carve for Halloween")
