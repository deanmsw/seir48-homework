CREATE TABLE battles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  theatre TEXT,
  location TEXT,
  result TEXT,
  start_date DATE,
  end_date DATE,
  description TEXT,
  image TEXT
);

-- seed data

INSERT INTO battles (name, theatre, location, result, start_date, end_date, description, image) VALUES ('Operation Overlord', 'Europe', 'Northern France', 'Allied Victory', '1944-06-06', '1944-08-30', 'Operation Overlord was the codename for the Battle of Normandy, the Allied operation that launched the successful invasion of German-occupied Western Europe during World War II', '');
INSERT INTO battles (name, theatre, location, result, start_date, end_date, description, image) VALUES ('Battle of Singapore', 'Pacific', 'Malayan Peninsula', 'Japenese Victory', '1942-02-08', '1942-02-15', 'The Battle of Singapore, also known as the Fall of Singapore, was fought in the South-East Asian theatre of World War II when the Empire of Japan captured the British stronghold of Singapore—nicknamed the "Gibraltar of the East".', '');
