-- ЗАДАНИЕ 2
-- 1. Название и продолжительность самого длительного трека.
select track_name, track_duration 
from tracks 
order by track_duration desc 
limit 1;

-- 2. Название треков, продолжительность которых не менее 3,5 минут.
select track_name, track_duration 
from tracks 
where track_duration >=3.5*60;

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select collection_name 
from collections
where collection_year between 2018 and 2020;

-- 4. Исполнители, чьё имя состоит из одного слова.
select musician_name 
from musicians 
where musician_name not like ('% %'); 

-- 5. Название треков, которые содержат слово «мой» или «my».
select track_name 
from tracks
where ((upper(track_name) like '%MY %') or
(upper(track_name) like '% MY %') or
(upper(track_name) like '% MY%'));  

-- ЗАДАНИЕ 3
-- 1. Количество исполнителей в каждом жанре.
select genre_name, count(track_name) from tracks
join musician_album ma on tracks.album_id = ma.album_id 
join musician_genre mg on ma.musician_id = mg.musician_id 
join genres on genres.genre_id = mg.genre_id 
group by genre_name;

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
select count(track_name) from tracks 
join albums on tracks.album_id = albums.album_id
where album_year between 2019 and 2020;

-- 3. Средняя продолжительность треков по каждому альбому.
select album_name, avg(track_duration) from albums
join tracks on albums.album_id = tracks.album_id
group by album_name;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
select musician_name from musicians m
join musician_album ma on m.musician_id = ma.musician_id
join albums a on ma.album_id = a.album_id
where album_year = 2020;

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select collection_name from collections c
join track_collection tc on c.collection_id = tc.collection_id
join tracks t on tc.track_id = t.track_id
join albums a on t.album_id = a.album_id
join musician_album ma on a.album_id = ma.album_id
join musicians m on ma.musician_id = m.musician_id
where musician_name = 'a-ha'
group by collection_name;