-- Жанры
insert into genres (genre_name)
values ('Rock');

insert into genres (genre_name)
values ('Electro-pop');

insert into genres (genre_name)
values ('pop');

-- Исполнители
insert into musicians (musician_name)
values ('Red Hot Chili Peppers');

insert into musicians (musician_name)
values ('a-ha');

insert into musicians (musician_name)
values ('Celine Dion');

insert into musicians (musician_name)
values ('Erasure');

-- Альбомы
insert into albums (album_name, album_year)
values ('Californication', 1999);

insert into albums (album_name, album_year)
values ('Memorial Beach', 2020);

insert into albums (album_name, album_year)
values ('Lifelines', 2019);

insert into albums (album_name, album_year)
values ('One Heart', 2020);

insert into albums (album_name, album_year)
values ('Chorus', 2018);

-- Заполняем промежуточную таблицу исполнитель-альбом
insert into musician_album (musician_id, album_id)
values (
(select musician_id from musicians 
where musician_name = 'Red Hot Chili Peppers'),
(select album_id from albums 
where album_name = 'Californication')
);

insert into musician_album (musician_id, album_id)
values (
(select musician_id from musicians 
where musician_name = 'a-ha'),
(select album_id from albums 
where album_name = 'Memorial Beach')
);

insert into musician_album (musician_id, album_id)
values (
(select musician_id from musicians 
where musician_name = 'a-ha'),
(select album_id from albums 
where album_name = 'Lifelines')
);


insert into musician_album (musician_id, album_id)
values (
(select musician_id from musicians 
where musician_name = 'Celine Dion'),
(select album_id from albums 
where album_name = 'One Heart')
);


insert into musician_album (musician_id, album_id)
values (
(select musician_id from musicians 
where musician_name = 'Erasure'),
(select album_id from albums 
where album_name = 'Chorus')
);

-- Заполняем промежуточную таблицу исполнитель-жанр
insert into musician_genre (musician_id, genre_id)
values (
(select musician_id from musicians 
where musician_name = 'Red Hot Chili Peppers'),
(select genre_id from genres 
where genre_name = 'Rock')
);

insert into musician_genre (musician_id, genre_id)
values (
(select musician_id from musicians 
where musician_name = 'a-ha'),
(select genre_id from genres 
where genre_name = 'Electro-pop')
);

insert into musician_genre (musician_id, genre_id)
values (
(select musician_id from musicians 
where musician_name = 'Celine Dion'),
(select genre_id from genres 
where genre_name = 'pop')
);

insert into musician_genre (musician_id, genre_id)
values (
(select musician_id from musicians 
where musician_name = 'Erasure'),
(select genre_id from genres
where genre_name = 'Electro-pop')
);

-- Заполнение таблицы треков
insert into tracks (track_name, track_duration, track_compositor, album_id)
values ('Around the World', 238,'n/a',
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id)
values ('Parallel Universe', 270,'n/a',
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id)
values ('Scar Tissue', 215,'n/a',
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id)
values ('Otherside', 255,'n/a',
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id)
values ('Get on Top', 198,'n/a',
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id)
values ('Californication', 321,'n/a',
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Easily', 231, 'n/a', 
(select album_id from albums where album_name = 'Californication'));


insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Porcelain', 163, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Emit Remmus', 240, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('I Like Dirt', 157, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('This Velvet Glove', 225, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Savior', 292, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Purple Stain', 253, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Right on Time', 112, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Road Trippin', 205, 'n/a', 
(select album_id from albums where album_name = 'Californication')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Dark Is the Night for All', 226, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Move to Memphis', 262, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Cold as Stone', 499, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Angel in the Snow', 253, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Locust', 309, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Lie Down in Darkness', 272, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('How Sweet It Was', 360, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Lamb to the Slaughter', 260, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Between Your Mama and Yourself', 256, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Memorial Beach', 276, 'n/a', 
(select album_id from albums where album_name = 'Memorial Beach')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Lifelines', 257, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('You Wanted More', 219, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Forever Not Yours', 246, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Theres a Reason for It', 261, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Time & Again', 303, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Did Anyone Approach You?', 250, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Afternoon High', 270, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Oranges on Appletrees', 256, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('A Little Bit', 250, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Less Than Pure', 253, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Turn the Lights Down', 254, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Cannot Hide', 199, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('White Canvas', 207, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Dragonfly', 199, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Solace', 260, 'n/a', 
(select album_id from albums where album_name = 'Lifelines')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('I Drove All Night', 240, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Love Is All We Need', 229, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Faith', 222, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('In His Touch', 234, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('One Heart', 204, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Stand by Your Side', 213, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Naked', 220, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Sorry for Love', 267, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Have You Ever Been in Love', 248, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Reveal', 251, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Coulda Woulda Shoulda', 207, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Forget Me Not', 246, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('I Know What Love Is', 268, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Je taime encore', 204, 'n/a', 
(select album_id from albums where album_name = 'One Heart')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Breath of Life', 247, 'n/a', 
(select album_id from albums where album_name = 'Chorus')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Love to Hate You', 236, 'n/a', 
(select album_id from albums where album_name = 'Chorus')
);

insert into tracks (track_name, track_duration, track_compositor, album_id) 
values ('Siren Song', 284, 'n/a', 
(select album_id from albums where album_name = 'Chorus')
);

-- Коллекции
insert into collections (collection_name, collection_year)
values ('Greatest Hits', 2016);

insert into collections (collection_name, collection_year)
values ('The Definitive Singles Collection 1984–2004', 2020);

insert into collections (collection_name, collection_year)
values ('The Very Best of Celine Dion', 2015);

insert into collections (collection_name, collection_year)
values ('Hits! The Very Best Of Erasure', 2021);


-- Заполняем промежуточную таблицу трек-коллекция
insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Californication'), 
(select collection_id from collections  where collection_name = 'Greatest Hits')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Scar Tissue'), 
(select collection_id from collections  where collection_name = 'Greatest Hits')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Otherside'), 
(select collection_id from collections  where collection_name = 'Greatest Hits')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Parallel Universe'), 
(select collection_id from collections  where collection_name = 'Greatest Hits')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Road Trippin'), 
(select collection_id from collections  where collection_name = 'Greatest Hits')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Move to Memphis'),
(select collection_id from collections  where collection_name = 'The Definitive Singles Collection 1984–2004')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Dark Is the Night for All'), 
(select collection_id from collections  where collection_name = 'The Definitive Singles Collection 1984–2004')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Forever Not Yours'), 
(select collection_id from collections  where collection_name = 'The Definitive Singles Collection 1984–2004')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Lifelines'), 
(select collection_id from collections  where collection_name = 'The Definitive Singles Collection 1984–2004')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Sorry for Love'), 
(select collection_id from collections  where collection_name = 'The Very Best of Celine Dion')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Coulda Woulda Shoulda'), 
(select collection_id from collections  where collection_name = 'The Very Best of Celine Dion')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Faith'), 
(select collection_id from collections  where collection_name = 'The Very Best of Celine Dion')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Siren Song'), 
(select collection_id from collections  where collection_name = 'Hits! The Very Best Of Erasure')
);

insert into track_collection (track_id, collection_id) 
values ((select track_id from tracks  where track_name = 'Love to Hate You'), 
(select collection_id from collections  where collection_name = 'Hits! The Very Best Of Erasure')
);

insert into track_collection (track_id, collection_id) 
values (
(select track_id from tracks  where track_name = 'Breath of Life'), 
(select collection_id from collections  where collection_name = 'Hits! The Very Best Of Erasure')
);
