create database Assessment;
use Assessment;

create table  Nobel_win(YEAR_ year,
subject varchar(50),
winner varchar(50),
country varchar(50),
category varchar (50));

insert into  Nobel_win(YEAR_,subject,winner,country,category)
values('1970',"physics","Hannes Alfven","Sweden","Scientist"),
('1970',"Physics","Louls Neel","France","Scientist"),
('1970',"Chemistry","Luis Federico Leloir","France","Scientist"),
('1970',"Physiology","Ulf Von Euler","Sweden","Scientist"),
('1970',"Physiology","Bernard Katz","Germany","Scientist"),
('1970',"Literature","Aleksandr Solzhenitsyn","Russia","Linguist"),
('1970',"Economics","Paul Samuelson","USA","Economist"),
('1970',"Physiology","Julius Axelrod","USA","Scientist"),
('1971',"Physics","Dennis Gabor","Hungary","Scientist"),
('1971',"Chemistry","Gerhard Herzberg","Germany","Scientist"),
('1971',"Peace","Willy Brandt","Germany","Chancellor"),
('1971',"Literature","Pablo Neruda","Chile","Linguist"),
('1971',"Economics","Simon Kuznets","Russia","Economist"),
('1978',"Peace","Anwar al-Sadat","Egypt","President"),
('1978',"Peace","Menachem Begin","Israel","Prime Minister"),
('1987',"Chemistry","Donald J. Cram","USA","Scientist"),
('1987',"Chemistry","Jean-Marie Lehn","France","Scientist"),
('1987',"Physiology","Susumu Tonegawa","Japan","Scientist"),
('1994',"Economics","Reinhard Selten","Germany","Economist"),
('1994',"Peace","Yitzhak Rabin","Israel","Prime Minister"),
('1987',"Physics","Johannes Georg Bednorz","Germany","Scientist"),
('1987',"Literature","Joseph Brodsky","Russia","Linguist"),
('1987',"Economics","Robert Solow","USA","Economist"),
('1994',"Literature","Kenzaburo Oe","Japan","Linguist");


-- Write sql query to find the nobel prize winners of the year 1970. Return year,subject and winner
SELECT YEAR_,subject,winner FROM nobel_win WHERE YEAR_=1970;  

-- Write sql query to find the nobel prize winners in chemistry between the years 1965 
-- and 1975. Begin and end values are includedReturn year, subject, winner and country
SELECT YEAR_, subject, winner, country FROM nobel_win WHERE subject = 'Chemistry' AND YEAR_>=1965 AND YEAR_<=1975;

-- Write sql query to retrieve the details of the winners whose first name matches with  the string ‘Louis’. Return year,subject,winner,country
SELECT * FROM nobel_win WHERE winner LIKE 'Louis %';

-- Write sql query to find Nobel prize winners for the subject that does not begin with the letter ‘P’. Order the result by year, descending and winner in ascending
SELECT * FROM nobel_win WHERE subject NOT LIKE 'P%' ORDER BY YEAR_ DESC, winner;

-- Write sql query to find the details of 1970 Nobel prize winners. Order the result by subject, ascending except for ‘Chemistry’ and ‘Economics’
-- which will come at the end of the result set. Return year, subject, winner , country and category
SELECT * FROM nobel_win WHERE YEAR_=1970 ORDER BY CASE
    WHEN subject IN ('Economics','Chemistry') THEN 1
    ELSE 0
 END ASC, subject, winner;





