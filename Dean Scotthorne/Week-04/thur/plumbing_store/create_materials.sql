


CREATE TABLE materials (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_name TEXT,
  description TEXT,
  price INTEGER,
  quantity INTEGER,
  location TEXT,
  image TEXT
);


INSERT INTO materials (id, product_name, description, price, quantity, location, image) VALUES ('0001', 'Coupling', 'Joins two pieces of pipe together in a straight line', '3', '10', 'Sydney', '');
INSERT INTO materials (id, product_name, description, price, quantity, location, image) VALUES ('0002', 'Elbow', 'Used to join two pieces of pipe together and change direction', '4', '10', 'Melbourne', '');
