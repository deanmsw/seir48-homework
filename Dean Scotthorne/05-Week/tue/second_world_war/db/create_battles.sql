CREATE TABLE battles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  theatre TEXT,
  location TEXT,
  axis_general TEXT,
  axis_gen_image TEXT,
  allied_general TEXT,
  allied_gen_image TEXT,
  axis_casualties INTEGER,
  allied_casualties INTEGER,
  result TEXT,
  start_date DATE,
  end_date DATE,
  description TEXT,
  image TEXT
);
