create table pokemon_species(
	id serial primary key,
  name varchar not null,
  gen int not null,
  primary_color varchar not null
);

create table pokemon_individuals(
	id serial primary key,
  pokemon_species_id int not null references pokemon_species(id),
  temperament varchar not null,
  nickname varchar,
  level int not null,
  is_shiny boolean not null
);

create table trainers(
	id serial primary key,
  name varchar not null,
  age int not null,
  badges_acquired int,
  pokemon_individuals_id int not null references pokemon_individuals(id)
);

create table moves(
	id serial primary key,
  power int not null,
  effect varchar not null,
  type varchar not null,
  accuracy_percentage int not null
);

create table pokemon_moves(
	id serial primary key,
  pokemon_individual_id int not null references pokemon_individuals(id),
  moves_id int not null references moves(id)
);

