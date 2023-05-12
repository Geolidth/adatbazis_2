-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2023. Máj 06. 21:27
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `oscar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `filmek`
--

CREATE TABLE `filmek` (
  `azon` varchar(15) NOT NULL,
  `cim` varchar(255) DEFAULT NULL,
  `ev` int(11) DEFAULT NULL,
  `dij` int(11) DEFAULT NULL,
  `jelol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `filmek`
--

INSERT INTO `filmek` (`azon`, `cim`, `ev`, `dij`, `jelol`) VALUES
('abia62', 'Lawrence of Arabia', 1962, 7, 10),
('acus60', 'Spartacus', 1960, 4, 6),
('adre48', 'The Treasure of the Sierra Madre', 1948, 3, 4),
('agon00', 'Crouching Tiger, Hidden Dragon', 2000, 4, 10),
('aire08', 'Slumdog Millionaire', 2008, 8, 10),
('aisy89', 'Driving Miss Daisy', 1989, 4, 9),
('ambs91', 'The Silence of the Lambs', 1991, 5, 7),
('amer79', 'Kramer vs. Kramer', 1979, 5, 9),
('anca43', 'Casablanca', 1943, 3, 8),
('andy42', 'Yankee Doodle Dandy', 1942, 3, 8),
('anic97', 'Titanic', 1997, 11, 14),
('aret72', 'Cabaret', 1972, 8, 10),
('Argo12', 'Argo', 2012, 3, 7),
('aris51', 'An American in Paris', 1951, 6, 8),
('arty55', 'Marty', 1955, 4, 8),
('atar09', 'Avatar', 2009, 3, 9),
('ator00', 'Gladiator', 2000, 5, 12),
('ator04', 'The Aviator', 2004, 5, 11),
('atra63', 'Cleopatra', 1963, 4, 9),
('atum07', 'The Bourne Ultimatum', 2007, 3, 3),
('auty99', 'American Beauty', 1999, 5, 8),
('aven27', '7th Heaven', 1927, 3, 5),
('Baby04', 'Million Dollar Baby', 2004, 4, 7),
('bbit88', 'Who Framed Roger Rabbit', 1988, 3, 6),
('bird62', 'To Kill a Mockingbird', 1962, 3, 8),
('bles12', 'Les Mis‚rables', 2012, 3, 8),
('cade33', 'Cavalcade', 1933, 3, 4),
('cago02', 'Chicago', 2002, 6, 13),
('cker09', 'The Hurt Locker', 2009, 6, 9),
('Club13', 'Dallas Buyers Club', 2013, 3, 6),
('cula92', "Bram Stoker's Dracula", 1992, 3, 4),
('Day91', 'Terminator 2: Judgment Day', 1991, 4, 6),
('Days56', 'Around the World in Eighty Days', 1956, 5, 8),
('der 83', 'Fanny & Alexander ', 1983, 4, 6),
('deus84', 'Amadeus', 1984, 8, 11),
('dman14', 'Birdman', 2014, 4, 9),
('eart95', 'Braveheart', 1995, 5, 10),
('eech10', "The King's Speech", 2010, 4, 12),
('elds84', 'The Killing Fields', 1984, 3, 7),
('elot67', 'Camelot', 1967, 3, 5),
('End92', 'Howards End', 1992, 3, 9),
('erno74', 'The Towering Inferno', 1974, 3, 8),
('eror87', 'The Last Emperor', 1987, 9, 9),
('erse36', 'Anthony Adverse', 1936, 4, 7),
('ette43', 'The Song of Bernadette', 1943, 4, 12),
('Eve50', 'All About Eve', 1950, 6, 14),
('f Pi12', 'Life of Pi', 2012, 4, 11),
('feld36', 'The Great Ziegfeld', 1936, 3, 7),
('ffic00', 'Traffic', 2000, 4, 5),
('Fire81', 'Chariots of Fire', 1981, 4, 7),
('ful 98', 'Life Is Beautiful ', 1998, 3, 7),
('gdad40', 'The Thief of Bagdad', 1940, 3, 4),
('Gigi58', 'Gigi', 1958, 9, 9),
('Gump94', 'Forrest Gump', 1994, 6, 13),
('Hall77', 'Annie Hall', 1977, 4, 5),
('hing55', 'Love Is a Many-Splendored Thing', 1955, 3, 8),
('Home78', 'Coming Home', 1978, 3, 8),
('Hood38', 'The Adventures of Robin Hood', 1938, 3, 4),
('Hud63', 'Hud', 1963, 3, 7),
('Hugo11', 'Hugo', 2011, 5, 11),
('Hur59', 'Ben-Hur', 1959, 11, 12),
('iano93', 'The Piano', 1993, 3, 8),
('iday53', 'Roman Holiday', 1953, 3, 10),
('ient96', 'The English Patient', 1996, 9, 12),
('iful52', 'The Bad and the Beautiful', 1952, 5, 6),
('ight16', 'Moonlight', 2016, 3, 8),
('ight34', 'It Happened One Night', 1934, 5, 5),
('ight67', 'In the Heat of the Night', 1967, 5, 7),
('inth06', "Pan's Labyrinth", 2006, 3, 6),
('isha05', 'Memoirs of a Geisha', 2005, 3, 6),
('iven92', 'Unforgiven', 1992, 4, 9),
('iver42', 'Mrs. Miniver', 1942, 6, 12),
('ives46', 'The Best Years of Our Lives', 1946, 7, 8),
('Jaws75', 'Jaws', 1975, 3, 4),
('Jazz79', 'All That Jazz', 1979, 4, 9),
('k81', 'Raiders of the Lost Ark', 1981, 4, 8),
('kend45', 'The Lost Weekend', 1945, 4, 7),
('Kid69', 'Butch Cassidy and the Sundance Kid', 1969, 4, 7),
('King03', 'The Lord of the Rings: The Return of the King', 2003, 11, 11),
('Kong05', 'King Kong', 2005, 3, 4),
('Kwai57', 'The Bridge on the River Kwai', 1957, 7, 8),
('Lady64', 'My Fair Lady', 1964, 8, 12),
('Land16', 'La La Land', 2016, 6, 14),
('lash14', 'Whiplash', 2014, 3, 5),
('lave13', '12 Years a Slave', 2013, 3, 9),
('ling65', 'Darling', 1965, 3, 5),
('List93', "Schindler's List", 1993, 7, 12),
('lley41', 'How Green Was My Valley', 1941, 5, 10),
('lly!69', 'Hello, Dolly!', 1969, 3, 7),
('lory89', 'Glory', 1989, 3, 5),
('Love98', 'Shakespeare in Love', 1998, 7, 13),
('lson44', 'Wilson', 1944, 5, 10),
('lves90', 'Dances with Wolves', 1990, 7, 12),
('Man88', 'Rain Man', 1988, 4, 8),
('Men07', 'No Country for Old Men', 2007, 4, 8),
('Men49', "All the King's Men", 1949, 3, 7),
('Men76', "All the President's Men", 1976, 4, 8),
('ment47', "Gentleman's Agreement", 1947, 3, 8),
('ment60', 'The Apartment', 1960, 5, 10),
('ment83', 'Terms of Endearment', 1983, 5, 11),
('Mind01', 'A Beautiful Mind', 2001, 4, 8),
('mlet48', 'Hamlet', 1948, 4, 7),
('nant15', 'The Revenant', 2015, 3, 12),
('nara57', 'Sayonara', 1957, 4, 10),
('nd I56', 'The King and I', 1956, 5, 9),
('ndhi82', 'Gandhi', 1982, 8, 11),
('ndon75', 'Barry Lyndon', 1975, 4, 7),
('Nest75', "One Flew over the Cuckoo's Nest", 1975, 5, 9),
('nist02', 'The Pianist', 2002, 3, 7),
('nity53', 'From Here to Eternity', 1953, 8, 13),
('Noon52', 'High Noon', 1952, 4, 7),
('nter68', 'The Lion in Winter', 1968, 3, 7),
('nter78', 'The Deer Hunter', 1978, 5, 9),
('ntry60', 'Elmer Gantry', 1960, 3, 5),
('ocky76', 'Rocky', 1976, 3, 10),
('olf?66', "Who's Afraid of Virginia Woolf?", 1966, 5, 13),
('ones63', 'Tom Jones', 1963, 4, 10),
('ople80', 'Ordinary People', 1980, 4, 6),
('otel14', 'The Grand Budapest Hotel', 2014, 4, 9),
('Park93', 'Jurassic Park', 1993, 3, 3),
('pins64', 'Mary Poppins', 1964, 5, 13),
('Pond81', 'On Golden Pond', 1981, 3, 10),
('Prix66', 'Grand Prix', 1966, 3, 3),
('racy90', 'Dick Tracy', 1990, 3, 7),
('rank59', 'The Diary of Anne Frank', 1959, 3, 8),
('rash05', 'Crash', 2005, 3, 6),
('Reds81', 'Reds', 1981, 3, 12),
('reek64', 'Zorba the Greek', 1964, 3, 7),
('reet47', 'Miracle on 34th Street', 1947, 3, 4),
('ress49', 'The Heiress', 1949, 4, 8),
('rial82', 'E.T.: The Extra-Terrestrial', 1982, 4, 9),
('rica85', 'Out of Africa', 1985, 7, 11),
('Ring01', 'The Lord of the Rings: The Fellowship of the Ring', 2001, 4, 13),
('rise27', 'Sunrise', 1927, 3, 4),
('rmer35', 'The Informer', 1935, 4, 6),
('Road15', 'Mad Max: Fury Road', 2015, 6, 10),
('ront54', 'On the Waterfront', 1954, 8, 12),
('Roof71', 'Fiddler on the Roof', 1971, 3, 8),
('rron31', 'Cimarron', 1931, 3, 7),
('rted06', 'The Departed', 2006, 4, 5),
('ruck87', 'Moonstruck', 1987, 3, 6),
('Ryan98', 'Saving Private Ryan', 1998, 5, 11),
('sire51', 'A Streetcar Named Desire', 1951, 4, 12),
('sons66', 'A Man for All Seasons', 1966, 6, 8),
('sons88', 'Dangerous Liaisons', 1988, 3, 7),
('Sun51', 'A Place in the Sun', 1951, 6, 9),
('t II74', 'The Godfather Part II', 1974, 6, 11),
('tain05', 'Brokeback Mountain', 2005, 3, 8),
('ters86', 'Hannah and Her Sisters', 1986, 3, 7),
('Tess80', 'Tess', 1980, 3, 6),
('teur36', 'The Story of Louis Pasteur', 1936, 3, 4),
('ther72', 'The Godfather', 1972, 3, 10),
('ting73', 'The Sting', 1973, 7, 10),
('tion10', 'Inception', 2010, 4, 8),
('tion71', 'The French Connection', 1971, 5, 8),
('tist11', 'The Artist', 2011, 5, 10),
('toon86', 'Platoon', 1986, 4, 8),
('tory61', 'West Side Story', 1961, 10, 11),
('trix99', 'The Matrix', 1999, 4, 4),
('tton08', 'The Curious Case of Benjamin Button', 2008, 3, 13),
('tton70', 'Patton', 1970, 7, 10),
('ttoo55', 'The Rose Tattoo', 1955, 3, 8),
('tuff83', 'The Right Stuff', 1983, 4, 8),
('ulia77', 'Julia', 1977, 3, 11),
('usic65', 'The Sound of Music', 1965, 5, 10),
('vago65', 'Doctor Zhivago', 1965, 5, 10),
('vard50', 'Sunset Boulevard', 1950, 3, 11),
('ver!68', 'Oliver!', 1968, 5, 11),
('View86', 'A Room with a View', 1986, 3, 8),
('vity13', 'Gravity', 2013, 7, 10),
('War02', 'The Fog of War', 2002, 6, 13),
('Wars77', 'Star Wars', 1977, 6, 10),
('Way44', 'Going My Way', 1944, 7, 10),
('wboy69', 'Midnight Cowboy', 1969, 3, 7),
('Wind39', 'Gone with the Wind', 1939, 8, 13),
('Won63', 'How the West Was Won', 1963, 3, 8),
('work10', 'The Social Network', 2010, 3, 8),
('work76', 'Network', 1976, 4, 10),
('Zola37', 'The Life of Emile Zola', 1937, 3, 10);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `filmek`
--
ALTER TABLE `filmek`
  ADD PRIMARY KEY (`azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
