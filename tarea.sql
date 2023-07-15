-- selects
select * from users;
select * from songs;
select * from favorites;

-- users
create table users (
    id serial primary key,
    name varchar(100),
    lastname varchar(100),
    birth_date date
);

insert into users (name,lastname,birth_date) values
    ('Sergio', 'Riatiga', '2001-01-15'),
    ('Luis','Seña','2015-01-16'),
    ('Leonardo','Diaz','2021-01-15');

-- songs
create table songs (
    id serial primary key,
    name varchar(100),
    artist varchar (100),
    genre varchar(100),
    relese_date date
);

insert into songs (name,artist,genre,relese_date) values
    ('Lo que sea','maluma','pop','2010-01-09'),
    ('Claro de luna','Debussy','Clasica','1995-08-15'),
    ( 'enrique', 'bumbury', 'pop', '1996/03/05'),
    ('titanic', 'Jack', 'roamntica', '1914-02-15');

-- favorites
create table favorites(
    id serial primary key,
    user_id int references users(id),
    song_id int references songs(id)
);

insert into favorites (user_id,song_id) values
    (1,4),
    (3,1),
    (2,4),
    (3,2);

-- inner join

select * from songs inner join favorites 
    on songs.id = favorites.song_id inner join users
    on favorites.user_id = users.id;