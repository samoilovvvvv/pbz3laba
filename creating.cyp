CREATE (Ilya: Person {namIlya", from:"Belarus"}), (Denis:
Person {name: "Denis", from: "Ukraine"}), (Maks:
Person {name: "Maks", from: "Poland"});

MATCH(Ilya:Person), (Denis:Person)
  WHERE Ilya.name = 'Ilya' AND Denis.name = 'Denis'
CREATE(Denis)-[:BE_FRIEND]->(Ilya);

MATCH(Ilya:Person), (Denis:Person)
  WHERE Ilya.name = 'Ilya' AND Denis.name = 'Denis'
CREATE(Ilya)-[:BE_FRIEND]->(Denis);

MATCH(Ilya:Person), (Maks:Person)
  WHERE Ilya.name = 'Ilya' AND Maks.name = 'Maks'
CREATE(Maks)-[:BE_FRIEND]->(Ilya);

MATCH(Ilya:Person), (Maks:Person)
  WHERE Ilya.name = 'Ilya' AND Maks.name = 'Maks'
CREATE(Ilya)-[:BE_FRIEND]->(Maks);

MATCH(Denis:Person), (Maks:Person)
  WHERE Denis.name = 'Denis' AND Maks.name = 'Maks'
CREATE(Maks)-[:BE_FRIEND]->(Denis);

MATCH(Denis:Person), (Maks:Person)
  WHERE Denis.name = 'Denis' AND Maks.name = 'Maks'
CREATE(Denis)-[:BE_FRIEND]->(Maks);

CREATE (Nike_Jordan: Trainers {Company: "Nike", from:"USA"}),
(Adidas_Equipment: Trainers {Company: "Adidas", from: "England"}),
(Puma_Clyde: Trainers {Company: "Puma", from: "Germany"});

MATCH(Ilya:Person), (Adidas: Trainers)
  WHERE Ilya.name = 'Ilya' AND Adidas.Company = 'Adidas'
CREATE(Ilya)-[:LIKE]->(Adidas);

MATCH(Ilya:Person), (Puma: Trainers)
  WHERE Ilya.name = 'Ilya' AND Puma.Company = 'Puma'
CREATE(Ilya)-[:LIKE]->(Puma);

MATCH(Ilya:Person), (Nike:
Trainers)
  WHERE Ilya.name = 'Ilya' AND Nike.Company = 'Nike'
CREATE(Ilya)-[:HAVE]->(Nike);

MATCH(Maks:Person), (Adidas: Trainers)
  WHERE Maks.name = 'Maks' AND Adidas.Company = 'Adidas'
CREATE(Maks)-[:LIKE]->(Adidas);

MATCH(Maks:Person), (Puma: Trainers)
  WHERE Maks.name = 'Maks' AND Puma.Company = 'Puma'
CREATE(Maks)-[:HAVE]->(Puma);

MATCH(Maks:Person), (Nike:
Trainers)
  WHERE Maks.name = 'Maks' AND Nike.Company = 'Nike'
CREATE(Maks)-[:LIKE]->(Nike);

MATCH(Denis:Person), (Adidas: Trainers)
  WHERE Denis.name = 'Denis' AND Adidas.Company = 'Adidas'
CREATE(Denis)-[:HAVE]->(Adidas);

MATCH(Denis:Person), (Puma: Trainers)
  WHERE Denis.name = 'Denis' AND Puma.Company = 'Puma'
CREATE(Denis)-[:LIKE]->(Puma);

MATCH(Denis:Person), (Nike:
Trainers)
  WHERE Denis.name = 'Denis' AND Nike.Company = 'Nike'
CREATE(Denis)-[:LIKE]->(Nike);

