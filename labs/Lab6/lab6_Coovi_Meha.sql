-- 0- Sart progress sql
-- service postgresql start
-- sudo -u postgres psql
create database lab5;
\c lab5;

-- 1 Create university table
create table if not exists universities(id serial, University varchar (120) not null, established date not null, address varchar (50) not null, population integer not null,acceptance float not null, primary key(id));

--  2 insert statement of University Information
insert into universities(University, established, address, population,acceptance) values ('CU Boulder', 1876, '1100 28th St, Boulder, CO 80303',35000,0.8);

-- 3 list the Football Players (name & major), organized by major in college
select name, major
  from players_table 
 order by major;

-- 4  list all of the Football Players (name & rushing yards) who have 70 or more rushing yards.
select name, rushing yard 
  from players_table
 where rushing_yard > 70;

--  5 list all of the games played against Nebraska (show all game information). 
select *
  from stat_table
 where Opposing_Team_Name= 'Nebraska';

-- 6  list all of the games CU Boulder has won
select *
  from stat_table
 where winner="buff";

--  7 list all of the games played in the Fall 2018 Season (show team name & game date). 
select *
  from stat_table
 where Game_date >= '08-01-2018' and Game_date <= '11-31-2018';

--   8 view that counts the total number of winning games
create view winning as select *
  from stat_table
 where winner='buff';

select count(*)
  from winning;

--  9 view that counts the total number of games played. 
create view games as select *
  from stat_table;

select count(*)
  from games;

-- 10 the two views you created (from 8 & 9) to calculate the percent of wins.
select count(*)
  from winning as winning_count;

select count(*)
  from games as game_count;

percent=winning_count*100/game_count;

-- 11 how many games "Cedric Vega" has played in during his entire football career
create view Cedric_game as select name, games_played
  from player_table
 where name="Cedric Vega";


-- 12 calculate the average number of rushing yards for "Cedric Vega", based on the number of games he has played. 
select name, (rushing_yard/games_played) as avg_rushing_cedric
 from player_table
 where name="Cedric Vega";