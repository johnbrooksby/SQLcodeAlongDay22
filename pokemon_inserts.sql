insert into pokemon_species (name, primary_color, gen)
values ('Charizard', 'orange', 1),
('Pikachu', 'yellow', 1),
('Blastoise', 'blue', 1),
('Articuno', 'blue', 1),
('Totodile', 'blue', 2);

insert into pokemon_individuals (pokemon_species_id,
temperament, nickname, level, is_shiny)
values(2, 'rowdy', 'bonsai', 32, false),
(3, 'sleepy', null, 50, false),
(5, 'rowdy', 'snappers', 5, true),
(5, 'docile', 'rasputen', 98, true);

select * from pokemon_individuals;

insert into moves (power, effect, type, accuracy_percentage, name)
values(0, 'accuracy reduced by one stage', 'normal', 100, 'sand attack'),
(100, 0, 'ground', 100, 'earthquake'),
(95, '10% chance to freeze foe', 'ice', 100, 'ice beam'),
(120, '10% chance to burn foe', 'fire', 85, 'fire blast');

alter table moves add name varchar not null unique;

insert into trainers (name, age, badges_acquired, pokemon_individuals_id)
values ('Ash', 10, 108, 1);
select * from pokemon_individuals;
select * from moves;

insert into pokemon_moves (pokemon_individual_id, moves_id)
values (1,6),
(1,7),
(1,9),
(2,8),
(3,8),
(4,9),
(4,8),
(3,6);