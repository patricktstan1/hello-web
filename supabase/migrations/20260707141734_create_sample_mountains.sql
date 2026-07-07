create table if not exists sample_mountains (
  id bigint generated always as identity primary key,
  name text not null,
  height_m integer not null,
  range text not null,
  country text not null
);

alter table sample_mountains enable row level security;

create policy "Allow public read" on sample_mountains
  for select using (true);

insert into sample_mountains (name, height_m, range, country) values
  ('Mount Everest', 8849, 'Himalayas', 'Nepal/China'),
  ('K2', 8611, 'Karakoram', 'Pakistan/China'),
  ('Kangchenjunga', 8586, 'Himalayas', 'Nepal/India'),
  ('Lhotse', 8516, 'Himalayas', 'Nepal/China'),
  ('Makalu', 8485, 'Himalayas', 'Nepal/China'),
  ('Cho Oyu', 8188, 'Himalayas', 'Nepal/China'),
  ('Denali', 6190, 'Alaska Range', 'United States'),
  ('Kilimanjaro', 5895, 'Eastern Rift', 'Tanzania'),
  ('Aconcagua', 6961, 'Andes', 'Argentina'),
  ('Mont Blanc', 4808, 'Alps', 'France/Italy');
