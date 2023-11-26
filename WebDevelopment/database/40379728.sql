-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 05:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `40379728`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `atrist_id` int(11) NOT NULL,
  `artist_name` varchar(250) NOT NULL,
  `artist_img_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`atrist_id`, `artist_name`, `artist_img_url`) VALUES
(1, ' Pink Floyd', 'https://cdn.britannica.com/64/23164-050-A7D2E9D9/Pink-Floyd.jpg'),
(2, ' Fleetwood Mac', 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Fleetwood_Mac_Billboard_1977.jpg'),
(3, ' The Eagles', 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2013/04/22/13/eagles.jpg?quality=75&width=990&height=614&fit=bounds&format=pjpg&crop=16%3A9%2Coffset-y0.5&auto=webp'),
(4, ' The Rolling Stones', 'https://cdn.britannica.com/41/197341-050-4859B808/The-Rolling-Stones-Bill-Wyman-Keith-Richards-1964.jpg'),
(5, ' Joni Mitchell', 'https://cdn.britannica.com/19/227419-050-35E83363/American-singer-songwriter-Joni-Mitchell-Isle-of-White-Festival-1970.jpg'),
(6, ' Steely Dan', 'https://cdn.britannica.com/15/69715-050-0D1A79A2/Walter-Becker-Donald-Fagen-Steely-Dan-Los-2001.jpg'),
(7, ' Stevie Wonder', 'https://cdn.britannica.com/66/103166-050-9423AD02/Stevie-Wonder.jpg'),
(8, ' Blondie', 'https://bestlifeonline.com/wp-content/uploads/sites/3/2022/03/blondie-main.jpg?quality=82&strip=1&resize=970%2C546'),
(10, ' Michael Jackson', 'https://hips.hearstapps.com/hmg-prod/images/michael-jackson-gettyimages-89446104.jpg?resize=1200:*'),
(11, ' Prince and The Revolution', 'https://static01.nyt.com/images/2020/05/14/arts/14livestreaming-art/14livestreaming-art-jumbo.jpg?quality=75&auto=webp'),
(12, ' U2', 'https://www.billboard.com/wp-content/uploads/2022/07/U2-2022-press-Olaf-Heine-billboard-1548.jpg?w=942&h=623&crop=1&resize=942%2C623'),
(13, ' Guns N\' Roses', 'https://upload.wikimedia.org/wikipedia/en/a/a4/Guns-N-Roses-1987.jpg'),
(14, ' The Police', 'https://img.apmcdn.org/b86d9dd7ef1652ce149ffa09bb7b95c9388cf5f1/normal/e7d36b-20140113-police-band.jpg'),
(15, ' Madonna', 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Madonna_Rebel_Heart_Tour_2015_-_Stockholm_%2823051472299%29_%28cropped%29.jpg'),
(16, ' Def Leppard', 'https://memberdata.s3.amazonaws.com/hi/hitsdd/photos/hitsdd_photo_gal__photo_791413099.jpeg'),
(17, ' Paul Simon', 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Paul_Simon_at_the_9-30_Club_%28b%29.jpg'),
(18, ' Bruce Springsteen', 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Bruce_Springsteen_-_Roskilde_Festival_2012.jpg'),
(19, ' Duran Duran', 'https://static.tvtropes.org/pmwiki/pub/images/5c7019c0b6519.png'),
(20, ' Miles Davis', 'https://www.udiscovermusic.com/wp-content/uploads/2020/11/Miles-Davis-GettyImages-84843312.jpg'),
(21, ' The Beatles', 'https://cdn.britannica.com/18/136518-050-CD0E49C6/The-Beatles-Ringo-Starr-Paul-McCartney-George.jpg'),
(22, ' The Beach Boys', 'https://cdn.britannica.com/28/198728-050-178A6431/The-Beach-Boys-Al-Jardine-Dennis-Wilson-1966.jpg'),
(23, ' Bob Dylan', 'https://upload.wikimedia.org/wikipedia/commons/0/02/Bob_Dylan_-_Azkena_Rock_Festival_2010_2.jpg'),
(24, ' The Velvet Underground', 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Velvet_Underground_%26_Nico_publicity_photo_%28retouched%29.jpg'),
(25, ' Led Zeppelin', 'https://cdn.apollo.audio/one/media/63f6/1304/b2b0/1805/a74d/06a1/led-zeppelin-1968-colourised-getty.jpg?quality=80&format=jpg&crop=192,0,1317,1999&resize=crop'),
(26, ' The Jimi Hendrix Experience', 'https://images.thebrag.com/tmn/uploads/2022/01/Jimi-Hendrix-experience.jpg'),
(27, ' Nirvana', 'https://townsquare.media/site/366/files/2014/11/Nirvana.jpg?w=980&q=75'),
(28, ' Dr. Dre', 'https://images.squarespace-cdn.com/content/v1/56e1a8a4e707eb89cec850ea/1524687129889-8FTCOQIWJF9NZ8SYSRZM/young+DR+DRE+by+celebrity+hiphip+photographer+Michael+Benabib.jpg?format=750w'),
(29, ' Lauryn Hill', 'https://cdn.britannica.com/98/139498-050-1DEE18A5/Lauryn-Hill-2001.jpg'),
(30, ' Wu-Tang Clan', 'https://media.npr.org/assets/img/2019/06/07/wutang10229-blackrt_wide-1acbd054265f8b966a854c4b1adc008e974dee53-s1200-c85.webp'),
(31, ' R.E.M.', 'https://cdn.britannica.com/48/23048-004-8ABE02C6/REM.jpg'),
(32, ' Nine Inch Nails', 'https://cdn.wegow.com/media/artists/nine-inch-nails/nine-inch-nails-1511195439.72.2560x1440.jpg'),
(33, ' Wilco', 'https://upload.wikimedia.org/wikipedia/commons/6/68/Wilco_MassMoca_AustinNelson.png'),
(34, ' Daft Punk', 'https://cdn.britannica.com/89/181289-050-427762A2/Thomas-Bangalter-Guy-Manuel-de-Homem-Christo-Daft-Punk-2013.jpg'),
(35, ' The Strokes', 'https://cdn.britannica.com/77/205077-050-358F982F/The-Strokes-Nikolai-Fraiture-Fabrizio-Moretti-Albert-2006.jpg'),
(36, ' Green Day', 'https://i.guim.co.uk/img/media/55760e085efd29851aaa9039781334c63e478c85/0_300_4500_2700/master/4500.jpg?width=620&quality=45&dpr=2&s=none'),
(37, ' Arcade Fire', 'https://i8.amplience.net/i/naras/win_butler_and_regine_chassagne_march_2019_1129923238.jpg.jpg?w=821&sm=c'),
(38, ' Radiohead', 'https://www.nme.com/wp-content/uploads/2019/03/radiohead_2000-1392x884.jpg'),
(39, ' Bashy', 'https://images.ukfestivalguides.com/artist_images/bashy.jpg'),
(40, ' Animal Collective', 'https://i.guim.co.uk/img/media/ef7bb2c156e4af204ac3a136faa900136fcd3fd2/0_554_2000_1200/master/2000.jpg?width=620&quality=45&dpr=2&s=none'),
(41, ' MGMT', 'https://faroutmagazine.co.uk/static/uploads/1/2021/06/MGMT-are-back-in-the-studio.jpg'),
(42, ' Kanye West', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Kanye_West_at_the_2009_Tribeca_Film_Festival_%28crop_2%29.jpg'),
(43, ' Adele', 'https://upload.wikimedia.org/wikipedia/commons/5/52/Adele_for_Vogue_in_2021.png'),
(44, ' Bon Iver', 'https://pyxis.nymag.com/v1/imgs/32b/28a/de5aa2c7374e8192977150c7666cb1c24b-12-bon-iver.rhorizontal.w700.jpg'),
(45, ' Frank Ocean', 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Frank_Ocean_2022_Blonded.jpg'),
(46, ' M.A.A.D City', 'https://thesoniccollective.com/wp-content/uploads/2019/03/goodkid.jpg'),
(47, ' Kendrick Lamar', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Pulitzer2018-portraits-kendrick-lamar_%28cropped%29.jpg/800px-Pulitzer2018-portraits-kendrick-lamar_%28cropped%29.jpg'),
(48, ' Macklemore & Ryan Lewis', 'https://www.billboard.com/wp-content/uploads/media/Macklemore-Ryan-Lewis-portrait-billboard-1548.jpg?w=942&h=623&crop=1&resize=942%2C623'),
(49, ' Of Monsters and Men', 'https://www.billboard.com/wp-content/uploads/media/02-of-monsters-and-men-2019-cr-meredith-truax-billboard-1548.jpg?w=942&h=623&crop=1&resize=942%2C623'),
(50, ' Muddy Waters', 'https://i.discogs.com/zXjNo-YVgICr_M2uGoqa-RwvYRlCvJAlkMukALLhLo8/rs:fit/g:sm/q:90/h:306/w:306/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTU5MjQ2/LTEzOTQ5ODU2NTMt/NDExMS5qcGVn.jpeg'),
(51, 'The Groove Collective', 'https://www.lastminutemusicians.com/user_photos/800/1556022959/82880.jpg'),
(52, 'boygenius', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Boygenius.png/1024px-Boygenius.png'),
(61, 'Queen', '/queen.jpg'),
(62, 'Boris Brejcha', '/art1.jpg'),
(63, 'Art Blakey', '/A-29977-1625045515-5434.jpg'),
(64, ' Metallica', '/Metallica.jpg'),
(65, 'Sublime', '/artist12.jpg'),
(66, 'Chet Baker', '/chetBaker.jpg'),
(67, 'Westlife', '/artisttts.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `user_id`) VALUES
(1, 'Vinyl', 46),
(2, 'Recorder', 46),
(5, 'Jazz Jukebox: Vintage Vinyl Selections\r\n', 49),
(6, 'Rock Revival: Iconic Vinyl Anthology\r\n', 48),
(7, 'Groove Gallery: Funky Vinyl Jams', 47),
(8, 'Melodies of the Past: Nostalgic Vinyl Tunes', 47),
(9, 'Vinyl Vault: Rare and Vintage Recordings', 47),
(10, 'Soulful Spins: Motown and R&B Vinyl Gems', 49),
(11, 'Electro Echoes: Electronic Vinyl Adventures', 49),
(12, 'Folk Frenzy: Acoustic Vinyl Treasures', 50),
(13, 'World Beats: Global Vinyl Discoveries', 50),
(15, 'Pop Parade: Hit Vinyl Singles Collection', 50),
(16, 'Blues Blast: Vintage Vinyl Riffs and Licks', 49),
(17, 'Disco Delights: Funky Vinyl Dancefloor Fillers', 46),
(18, 'Country Classics: Timeless Vinyl Ballads', 46),
(19, 'Hip Hop Heritage: Old-School Vinyl Rhymes', 50),
(20, 'Reggae Rhythms: Vinyl Reggae Anthems', 50),
(21, 'Classical Masterpieces: Elegant Vinyl Compositions', 49),
(22, 'Psychedelic Dreams: Vinyl Psychedelia Trip', 46),
(23, 'Latin Legends: Sizzling Vinyl Salsa and Bossa Nova', 48),
(24, 'Punk Pioneers: Raw Vinyl Punk Rock Anthems', 47),
(26, 'Indie Inspirations: Vinyl Indie Rock Gems', 48),
(27, 'Experimental Escapades: Avant-Garde Vinyl Explorations', 47);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genres_id` int(11) NOT NULL,
  `genres_name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genres_id`, `genres_name`) VALUES
(1, 'Rock'),
(2, 'Punk'),
(3, 'Soul'),
(4, 'Country'),
(5, 'Hip Hop'),
(6, 'Classical'),
(7, 'Electronic'),
(8, 'Pop'),
(9, 'Reggae'),
(10, 'Blues'),
(11, 'Jazz');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likes_id` int(11) NOT NULL,
  `like_status` int(11) NOT NULL,
  `vinyl_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likes_id`, `like_status`, `vinyl_id`, `user_id`) VALUES
(2, 1, 1, 47),
(4, 1, 46, 50),
(10, 1, 53, 46),
(15, 1, 58, 46),
(17, 1, 10, 46),
(18, 1, 1, 46),
(19, 1, 61, 46),
(20, 1, 52, 46),
(21, 1, 46, 48),
(22, 1, 61, 48),
(23, 1, 10, 48),
(24, 1, 1, 48),
(27, 1, 1, 49),
(29, 1, 46, 46),
(31, 1, 77, 46),
(34, 1, 76, 46);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_date` date NOT NULL,
  `content` text NOT NULL,
  `rating` int(10) NOT NULL,
  `vinyl_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_date`, `content`, `rating`, `vinyl_id`, `user_id`) VALUES
(1, '2023-04-03', 'This is my most fav album', 3, 1, 46),
(2, '2023-04-03', 'I like this album', 4, 1, 47),
(3, '2023-04-05', 'lovely collection', 5, 54, 49),
(4, '2023-04-07', 'Never knew that this one is a bootleg release. Got it from a well good record store in Berlin back in the days. Strange.', 3, 59, 50),
(5, '2023-04-07', 'This is the best.', 5, 18, 46),
(6, '2023-04-09', 'This is awesome!\r\nI love it!', 5, 15, 48),
(7, '2023-04-16', 'I like this.....', 5, 4, 47),
(8, '2023-04-20', 'Does anybody know if this is in the original mono like the UK version that came out?', 5, 61, 46),
(9, '2023-04-20', 'Great album! Could be a little louder but still nice to have on vinyl.', 3, 52, 46),
(10, '2023-04-20', 'This is the best.....', 5, 1, 48),
(11, '2023-04-22', 'Good collection', 4, 1, 49),
(12, '2023-04-26', 'Excellent : )', 5, 15, 46);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `tracks_id` int(11) NOT NULL,
  `track_name` varchar(250) NOT NULL,
  `vinyl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`tracks_id`, `track_name`, `vinyl_id`) VALUES
(1, 'Speak To Me', 1),
(2, 'Breathe', 1),
(3, 'On The Run', 1),
(4, 'Time', 1),
(5, 'The Great Gig In The Sky', 1),
(6, 'Money', 1),
(7, 'Us And Them', 1),
(8, 'Any Colour You Like', 1),
(9, 'Brain Damage', 1),
(10, 'Eclipse', 1),
(11, 'Get Up and Groove', 2),
(12, 'Revolutionary Vibes', 2),
(13, 'Funky Reggae Party', 2),
(14, 'Hip-Hop Revolution', 2),
(15, 'Dancefloor Delight', 2),
(16, 'Into the Void', 3),
(17, 'Lost in Time', 3),
(18, 'Ethereal Dreams', 3),
(19, 'Beyond Reality', 3),
(20, 'Echoes of the Unknown', 3),
(21, 'Second Hand News', 4),
(22, 'Dreams', 4),
(23, 'Never Going Back Again', 4),
(24, 'Don\'t Stop', 4),
(25, 'Go Your Own Way', 4),
(26, 'Songbird', 4),
(27, 'The Chain', 4),
(28, 'You Make Loving Fun', 4),
(29, 'I Don\'t Want To Know', 4),
(30, 'Oh Daddy', 4),
(31, 'Gold Dust Woman', 4),
(32, 'Thunder Road', 5),
(33, 'Tenth Avenue Freeze-Out', 5),
(34, 'Night', 5),
(35, 'Backstreets', 5),
(36, 'Born To Run', 5),
(37, 'She\'s The One', 5),
(38, 'Meeting Across The River', 5),
(39, 'Jungleland', 5),
(40, 'Hotel California', 6),
(41, 'New Kid In Town', 6),
(42, 'Life In The Fast Lane', 6),
(43, 'Wasted Time', 6),
(44, 'Wasted Time (Reprise)', 6),
(45, 'Victim Of Love', 6),
(46, 'Pretty Maids All In A Row', 6),
(47, 'Try And Love Again', 6),
(48, 'The Last Resort', 6),
(49, 'Black Dog', 7),
(50, 'Rock And Roll', 7),
(51, 'The Battle Of Evermore', 7),
(52, 'Stairway To Heaven', 7),
(53, 'Misty Mountain Hop', 7),
(54, 'Four Sticks', 7),
(55, 'Going To California', 7),
(56, 'When The Levee Breaks', 7),
(57, 'Brown Sugar', 8),
(58, 'Sway', 8),
(59, 'Wild Horses', 8),
(60, 'Can’t You Hear Me Knocking', 8),
(61, 'You Gotta Move', 8),
(62, 'Bitch', 8),
(63, 'I Got The Blues', 8),
(64, 'Sister Morphine', 8),
(65, 'Dead Flowers', 8),
(66, 'Moonlight Mile', 8),
(67, 'Court And Spark', 9),
(68, 'Help Me', 9),
(69, 'Free Man In Paris', 9),
(70, 'People\'s Parties', 9),
(71, 'The Same Situation', 9),
(72, 'Car On A Hill', 9),
(73, 'Down To You', 9),
(74, 'Just Like This Train', 9),
(75, 'Raised On Robbery', 9),
(76, 'Trouble Child', 9),
(77, 'Black Cow', 10),
(78, 'Aja', 10),
(79, 'Deacon Blues', 10),
(80, 'Peg', 10),
(81, 'Home At Last', 10),
(82, 'I Got The News', 10),
(83, 'Josie', 10),
(84, 'Love\'s In Need Of Love Today', 11),
(85, 'Have A Talk With God', 11),
(86, 'Village Ghetto Land', 11),
(87, 'Contusion', 11),
(88, 'Sir Duke', 11),
(89, 'I Wish', 11),
(90, 'Knocks Me Off My Feet', 11),
(91, 'Pastime Paradise', 11),
(92, 'Hanging On The Telephone', 12),
(93, 'One Way Or Another', 12),
(94, 'Picture This', 12),
(95, 'Fade Away And Radiate', 12),
(96, 'Pretty Baby', 12),
(97, 'I Know But I Don\'t Know', 12),
(98, 'Will Anything Happen', 12),
(99, 'Sunday Girl', 12),
(100, 'Universal Love', 13),
(101, 'No Imitation', 13),
(102, 'Parallel Universe', 13),
(103, 'Talk Around Town', 13),
(104, 'Follow Your Heart \'Part One\'', 13),
(105, 'Wrinkles In Time', 13),
(106, 'Terraforming', 13),
(107, 'People Always Criticise Us', 13),
(108, 'Wanna Be Startin\' Somethin\'', 14),
(109, 'Baby Be Mine', 14),
(110, 'The Girl Is Mine', 14),
(111, 'Thriller', 14),
(112, 'Beat It', 14),
(113, 'Billie Jean', 14),
(114, 'Let\'s Go Crazy', 15),
(115, 'Take Me With U', 15),
(116, 'The Beautiful Ones', 15),
(117, 'Purple Rain', 15),
(118, 'Where The Streets Have No Name', 16),
(119, 'I Still Haven\'t Found What I\'m Looking For', 16),
(120, 'With Or Without You', 16),
(121, 'Bullet The Blue Sky', 16),
(122, 'Running To Stand Still', 16),
(123, 'Red Hill Mining Town', 16),
(124, 'In God\'s Country', 16),
(125, 'Think About You', 17),
(126, 'Welcome To The Jungle', 17),
(127, 'My Michelle', 17),
(128, 'It\'s So Easy', 17),
(129, 'Synchronicity I', 18),
(130, 'Walking In Your Footsteps', 18),
(131, 'O My God', 18),
(132, 'Mother', 18),
(133, 'Miss Gradenko', 18),
(134, 'Synchronicity II', 18),
(135, 'Every Breath You Take', 18),
(136, 'King Of Pain', 18),
(137, 'Born In The U.S.A.', 19),
(138, 'Cover Me', 19),
(139, 'Darlington County', 19),
(140, 'Like A Prayer', 20),
(141, 'Express Yourself', 20),
(142, 'Love Song', 20),
(143, 'Till Death Do Us Part', 20),
(144, 'Promise To Try', 20),
(145, 'Women', 21),
(146, 'Rocket', 21),
(147, 'Animal', 21),
(148, 'Love Bites', 21),
(149, 'Pour Some Sugar On Me', 21),
(150, 'Armageddon It', 21),
(151, 'The Boy In The Bubble', 22),
(152, 'Graceland', 22),
(153, 'I Know What I Know', 22),
(154, 'Gumboots', 22),
(155, 'Rio', 23),
(156, 'My Own Way', 23),
(157, 'Lonely In Your Nightmare', 23),
(158, 'Hungry Like The Wolf', 23),
(159, 'Hold Back The Rain', 23),
(160, 'New Religion', 23),
(161, 'So What', 24),
(162, 'Freddie Freeloader', 24),
(163, 'Blue In Green', 24),
(164, 'All Blues', 24),
(165, 'Flamenco Sketches', 24),
(166, 'Back In The U.S.S.R.', 25),
(167, 'Dear Prudence', 25),
(168, 'Glass Onion', 25),
(169, 'Ob-La-Di, Ob-La-Da', 25),
(170, 'Wild Honey Pie', 25),
(171, 'The Continuing Story Of Bungalow Bill', 25),
(172, 'While My Guitar Gently Weeps', 25),
(173, 'Happiness Is A Warm Gun', 25),
(174, 'Martha My Dear', 25),
(175, 'I\'m So Tired', 25),
(180, 'Like A Rolling Stone', 27),
(181, 'Tombstone Blues', 27),
(182, 'It Takes A Lot To Laugh, It Takes A Train To Cry', 27),
(183, 'Sunday Morning', 28),
(184, 'I\'m Waiting For The Man', 28),
(185, 'Femme Fatale', 28),
(186, 'Venus In Furs', 28),
(187, 'Run Run Run', 28),
(188, 'All Tomorrow\'s Parties', 28),
(189, 'Good Times Bad Times', 29),
(190, 'Babe I\'m Gonna Leave You', 29),
(191, 'You Shook Me', 29),
(192, 'Foxy Lady', 30),
(193, 'Manic Depression', 30),
(194, 'Red House', 30),
(195, 'Can You See Me', 30),
(196, 'Love Or Confusion', 30),
(197, 'I Don\'t Live Today', 30),
(198, 'Sgt. Pepper\'s Lonely Hearts Club Ban', 31),
(199, 'With A Little Help From My Friends', 31),
(200, 'Lucy In The Sky With Diamonds', 31),
(201, 'Getting Better', 31),
(202, 'Fixing A Hole', 31),
(203, 'She\'s Leaving Home', 31),
(204, 'Being For The Benefit Of Mr. Kite !', 31),
(205, 'Within You Without You', 31),
(206, 'When I\'m Sixty-Four', 31),
(207, 'Lovely Rita', 31),
(208, 'Smells Like Teen Spirit', 32),
(209, 'In Bloom', 32),
(210, 'Come As You Are', 32),
(211, 'Breed', 32),
(212, 'Lithium', 32),
(213, 'Polly', 32),
(214, 'The Chronic (Intro)', 33),
(215, 'Let Me Ride', 33),
(216, 'The Day The Niggaz Took Over', 33),
(217, 'Nuthin\' But A \"G\" Thang', 33),
(218, 'Airbag', 34),
(219, 'Karma Police', 34),
(220, 'Fitter Happier', 34),
(221, 'Lucky', 34),
(222, 'Lost Ones', 35),
(223, 'Ex-Factor', 35),
(224, 'To Zion', 35),
(225, 'Doo Wop (That Thing)', 35),
(226, 'Superstar', 35),
(227, 'Planet Telex', 36),
(228, 'The Bends', 36),
(229, 'High And Dry', 36),
(230, 'Bring Da Ruckus', 37),
(231, 'Shame On A Nigga', 37),
(232, 'Drive', 38),
(233, 'Try Not To Breathe', 38),
(234, 'The Sidewinder Sleeps Tonite', 38),
(235, 'Mr Self Destruct', 39),
(236, 'Piggy', 39),
(237, 'Heresy', 38),
(238, 'March Of The Pigs', 38),
(239, 'Closer', 38),
(240, 'Everything In Its Right Place', 40),
(241, 'Kid A', 40),
(242, 'The National Anthem', 40),
(243, 'Optimistic', 40),
(244, 'Motion Picture Soundtrack', 40),
(245, 'I Am Trying To Break Your Heart', 41),
(246, 'Kamera', 41),
(247, 'Radio Cure', 41),
(248, 'War On War', 41),
(249, 'Jesus, Etc.', 41),
(250, 'Ashes Of American Flags', 41),
(251, 'Heavy Metal Drummer', 41),
(252, 'I\'m The Man Who Loves You', 41),
(264, 'American Idiot', 44),
(265, 'Jesus Of Suburbia', 44),
(266, 'Crown Of Love', 45),
(267, 'Wake Up', 45),
(268, 'Haïti', 45),
(269, 'Rebellion (Lies)', 45),
(270, 'In The Backseat', 45),
(271, 'Good Morning', 46),
(272, 'Champion', 46),
(273, 'Stronger', 46),
(274, 'I Wonder', 46),
(281, 'Catch Me If You Can', 48),
(282, 'Before Before', 48),
(283, 'In The Flowers', 49),
(284, 'My Girls', 49),
(285, 'Also Frightened', 49),
(286, 'Time To Pretend', 50),
(287, 'Weekend Wars', 50),
(288, 'The Youth', 50),
(289, 'Electric Feel', 50),
(290, 'Kids', 50),
(291, 'Dark Fantasy', 51),
(292, 'Gorgeous', 51),
(293, 'Rolling In The Deep', 52),
(294, 'Rumour Has It', 52),
(295, 'Turning Tables', 52),
(296, 'Dont You Remember', 52),
(297, 'Set Fire To The Rain', 52),
(298, 'He Wont Go', 52),
(299, 'Perth', 53),
(300, 'Minnesota, WI', 53),
(301, 'Holocene', 53),
(302, 'Start', 54),
(303, 'Thinkin Bout You', 54),
(304, 'Fertilizer', 54),
(305, 'Sierra Leone', 54),
(306, 'Nikes', 55),
(307, 'Ivy', 55),
(313, 'Wesley\'s Theory', 57),
(314, 'For Free? (Interlude)', 57),
(315, 'Give Life Back To Music', 58),
(316, 'The Game Of Love', 58),
(317, 'Giorgio By Moroder', 58),
(318, 'Within', 58),
(319, 'Instant Crush', 58),
(320, 'Lose Yourself To Dance', 58),
(321, 'Ten Thousand Hours', 59),
(322, 'Can\'t Hold Us', 59),
(323, 'Dirty Paws', 60),
(324, 'King And Lionheart', 60),
(325, 'Numb Bears', 60),
(326, 'Sloom', 60),
(327, 'Little Talks', 60),
(328, 'From Finner', 60),
(329, 'Six Weeks', 60),
(330, 'Love Love Love', 60),
(331, 'I Just Want To Make Love To You', 61),
(332, 'Long Distance Call', 61),
(340, 'Silver Lining', 54),
(358, 'Mustapha', 73),
(359, 'Fat Bottomed Girls', 73),
(360, 'Jealousy', 73),
(361, 'Bicycle Race', 73),
(362, 'Let Me Entertain You', 73),
(363, 'Infra-Rae', 74),
(364, 'Ecaroh', 74),
(365, 'Infra-Rae', 75),
(366, 'Ecaroh', 75),
(367, 'The End Of A Love Affair', 75),
(368, 'Captain Nemo', 76),
(369, 'Take It All', 52),
(370, 'One And Only', 52),
(371, 'Reptile', 39),
(372, '72 Seasons', 77),
(373, 'Shadows Follow', 77),
(374, 'Screaming Suicide', 77),
(375, 'Sleepwalk My Life Away', 77),
(376, 'This Is Always', 78),
(377, 'Long Ago And Far Away', 78),
(378, 'Someone To Watch Over Me', 78),
(379, 'Just Friends', 78),
(380, 'I Wish I Knew', 78),
(381, 'Let There Be More Light', 79),
(382, 'A Saucerful Of Secret\'s', 79),
(383, 'Remember A Day', 79),
(384, 'Set The Controls For The Heart Of The Sun', 79),
(385, 'Corporal Clegg', 79),
(386, 'See-Saw', 79),
(387, 'Jugband Blues', 79),
(388, 'Lisbon, OH', 53),
(389, 'Beth/Rest', 53),
(390, 'Calgary', 53);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(46, 'Gowthami', 'Kumaresan', 'user1@gmail.com', '$2b$10$.HBybCrpaU1jGjx9bwJkm.X7eKz7mUqp0e.8/6jlmkq0PWB0C8bBi'),
(47, 'Kelly', 'Bucklee', 'kelly@gmail.com', '$2b$10$bAcmEVrQ2C39Zj62q1OYUOEca5bWuUJ0fAv9M3CwbXCd/O10WQMTa'),
(48, 'Vashiska', 'Solai', 'vashiska@gmail.com', '$2b$10$UnQCvDK1Dsls7uwW6N/fKef2uZBjGmMhv86iyh0zXqHKSbP65I3da'),
(49, 'Nessi', 'Gabey', 'nessi@gmail.com', '$2b$10$9kqaJMZ0oEd/CznK6WoAPuceE3CwKAldrtd3wQSU3VvMEKKM2tOmC'),
(50, 'Pren', 'Sherlock', 'pren@gmail.com', '$2b$10$eyxf0IxlckS0DCOhgEcIgOZTVKpl7DkKzXycpOKu3IxeA1SoPFyfC');

-- --------------------------------------------------------

--
-- Table structure for table `vinyl`
--

CREATE TABLE `vinyl` (
  `vinyl_id` int(11) NOT NULL,
  `album_name` varchar(120) NOT NULL,
  `describtion` text NOT NULL,
  `release_year` int(11) NOT NULL,
  `img_url` varchar(500) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vinyl`
--

INSERT INTO `vinyl` (`vinyl_id`, `album_name`, `describtion`, `release_year`, `img_url`, `artist_id`, `genres_id`, `collection_id`) VALUES
(1, 'The Dark Side Of The Mooon', '\"The Dark Side Of The Moon\" is the eighth studio LP to be released by Pink Floyd. It was recorded at Abbey Road Studios in London, England and released in 1973. It stands as one of the most successful commercial recordings of all time, and has been released in many countries. In the U.S., the album has spent more time on the Billboard 200 album chart than any other release in modern history1.', 1972, 'https://www.audiovenue.uk/wp-content/uploads/2021/07/pink-floyd-dark-side.jpg', 1, 1, 1),
(2, 'Revolutionary Vibes', 'An upbeat and energetic album that combines elements of reggae, funk, and hip-hop to create a unique sound that will get you dancing.', 2022, 'https://i.discogs.com/8IrJCPc2muYLcN70_vDJO8SAnjS_PvDZvF7xlLGrOt4/rs:fit/g:sm/q:90/h:550/w:548/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTkzNDc0/Ni0xMTc0NTgxMDMz/LmpwZWc.jpeg', 51, 9, 20),
(3, 'Lost in Time', 'A haunting and atmospheric album that blends ambient electronic sounds with experimental rock to create an otherworldly listening experience.', 2023, 'https://dt7v1i9vyp3mf.cloudfront.net/styles/news_large/s3/imagelibrary/2/2001-12-novationastation-1-aWQeeyav6OUZoVZ5XHEoGCIdF3bxb9Zf.jpg', 2, 7, 1),
(4, 'Rumours', 'Rumours is the eleventh studio album by British-American rock band Fleetwood Mac, February–August 1976 and released February 4, 1977.', 1977, 'https://i.discogs.com/WpuYpr4IADSy49WTIw4r6YW5p_AWCNQVZg6XvaQ0Yw8/rs:fit/g:sm/q:90/h:583/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3NDg4/MS0xMTkzMDMzNzU0/LmpwZWc.jpeg', 2, 10, 16),
(5, 'Born To Run', 'Born to Run is the third studio album by American singer-songwriter Bruce Springsteen, released on August 25, 1975, by Columbia Records.', 1975, 'https://i.discogs.com/opTGVHixXc2nIfDWRH_ipO898dAZGZ9HGQC01YxC_Ys/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMjc5/NDEyLTE2MTA3MjMx/OTUtNjM2MC5qcGVn.jpeg', 18, 1, 6),
(6, 'Hotel California', 'The fifth studio album of the Eagles, going platinum 16 times in the US, 6 times in the UK, and 10 times in Canada. It reached #1 in the US four times in 1977, making it one of the best-selling albums of that year.', 1976, 'https://i.discogs.com/PZz0RZth-jDXq_vEwv640MTGizMZe5KEc6KTzM6ZKzY/rs:fit/g:sm/q:90/h:600/w:596/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTQ4/MTYtMTM4MzkwOTE3/MC0xNzEyLmpwZWc.jpeg', 3, 1, 6),
(7, 'Led Zeppelin IV', 'The fourth studio album by the English rock band. The album is notable for featuring \'Stairway to Heaven\', which has been described as the band\'s signature song. Features the singles \'Black Dog\', \'Misty Mountain Hop\', \'Rock and Roll\' and \'Four Sticks\'.', 1978, 'https://i.discogs.com/yFq3X0xZMxIVHIFgmbrsPvJHXLJCfVLWs60AL4XS4bs/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMTU0/NjUtMTM2NjMxMTg2/Ny0yNzg1LmpwZWc.jpeg', 25, 1, 6),
(8, 'Sticky Fingers', 'Sticky Fingers is the ninth British and eleventh American studio album by the English rock band The Rolling Stones. The Stones recorded 22–31 March 1969, 2–4 December 1969 and 17 February – 31 October 1970, released it on 23 April 1971 on their new, and own label Rolling Stones Records. They had been contracted by Decca and London Records in the UK and the US since 1963.', 1971, 'https://i.discogs.com/FEVYTvynV0B0sVJR73NzITa9gws6Q5KTq80FqmE7wAM/rs:fit/g:sm/q:90/h:600/w:596/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMjcy/Njg3LTE1MjE4MTc2/NjktMjQ4MC5qcGVn.jpeg', 4, 1, 6),
(9, 'Court and Spark', 'Court and Spark is the sixth studio album by Canadian singer-songwriter Joni Mitchell. Released in January 1974, it infuses the folk rock style of her previous albums with jazz elements.', 1974, 'https://i.discogs.com/NB_iJerx4CKeizIS2xm6Pho79fnIZxxMxbnwi51Hie0/rs:fit/g:sm/q:90/h:600/w:596/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg5MjQx/Ny0xNTE5OTU1ODc2/LTg2MzEuanBlZw.jpeg', 5, 1, 26),
(10, 'Aja', 'Aja (pronounced Asia) is the sixth studio album by Steely Dan. Released in 1977, the album peaked at number three on the US charts and number five in the UK. It was the band\'s first platinum album and ultimately became their best-selling studio release, eventually selling over 5 million copies. The album includes the hit songs \"Deacon Blues\", \"Peg\" and \"Josie\".', 1977, 'https://i.discogs.com/ot23zaj_ZDGuaXUwODbHwRpvb_TM-Nv321LNzKF8zUU/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4NDIz/MzQtMTMxOTcyOTAx/MC5qcGVn.jpeg', 6, 11, 5),
(11, 'Songs in the Key of Life', 'Songs in the Key of Life is the eighteenth studio album by American singer, songwriter and musician Stevie Wonder. A double album, it was released on September 28, 1976, by Tamla Records, a division of Motown.', 1976, 'https://i.discogs.com/YzhtLts7LkthVlFHqcaq5ZNZ59GEwslZA9KCw556CSc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM1NTIz/My0xNDI2MTY2MTc0/LTkwODYuanBlZw.jpeg', 7, 3, 10),
(12, 'Parallel Lines', 'Original 1978 pressings contain the short version of Heart Of Glass, runtime is 3:49.', 1978, 'https://i.discogs.com/YrPi-9qDsleOuFgWWjciKH9LzPdvcpVcejlXMhUbO04/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1ODAx/OTktMTMyNzY0OTA2/NS5qcGVn.jpeg', 8, 2, 24),
(13, 'Parallel Universe', 'Parallel universe often refers to parallel universes in fiction, a self-contained separate world, universe or reality coexisting with the real world, which is used as a recurring plot point or setting used in fantasy and science fiction.', 1994, 'https://i.discogs.com/Ps7buNMj-zi7MhCL_ZtYK-RmwQl-OPC1wK3CMUSjDwc/rs:fit/g:sm/q:90/h:598/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2NTU5/OC0xNTM5OTEzOTk1/LTI0MDQuanBlZw.jpeg', 3, 7, 11),
(14, 'Thriller', 'USA 1st / early pressings do not list Michael Jackson as a co-producer on the back cover under the \"Produced by Quincy Jones...\" credit (example: Thriller). Later pressings add \"Co-Produced by Michael Jackson\" (examples: Thriller and Thriller).', 1982, 'https://i.discogs.com/dWe2AyguSxJpaaEWbK_mVLL3zs2ejuta0sJCx5BvS8o/rs:fit/g:sm/q:90/h:600/w:597/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI5MTEy/OTMtMTU5NDI0NTgx/Mi03OTMxLmpwZWc.jpeg', 41, 8, 15),
(15, 'Purple Rain', 'Purple Rain is the sixth studio album by American recording artist Prince.', 1984, 'https://i.discogs.com/mSIjl1G4gAdx2xw9iLG1fBmNPLz_5GNo0bLqeWyDMh4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5NDAy/MS0xMzM1NDAwMjg5/LmpwZWc.jpeg', 11, 8, 15),
(16, 'The Joshua Tree', 'The Joshua Tree is U2\'s fifth studio album and was released on 9 March 1987 (UK and US) / 10 Mar 1987 (Europe). It won the 1988 Grammy award for Album Of The Year and saw the band on the cover of Time magazine billed as \'Rock\'s Hottest Ticket.\'', 1987, 'https://i.discogs.com/V7SMMK5PSELtMiAh067ONvwzHAovSz1tHRPATK2Fth4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDE0/MzEtMTQzMzMzMzcw/NC05NjAwLmpwZWc.jpeg', 12, 1, 6),
(17, 'Appetite for Destruction', 'Appetite for Destruction is the debut studio album by American hard rock band Guns N\' Roses, released by Geffen Records on July 21, 1987. ', 1987, 'https://i.discogs.com/VQy0HOhX4RiGLIg0LXi-RiZMJG8wtJDvFaBbarerjyA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM4Mzc3/Ny0xMTczNTQzMzU5/LmpwZWc.jpeg', 13, 1, 6),
(18, 'Synchronicity', 'The English rock band The Police has released five studio albums between 1978 and 1983.', 1983, 'https://i.discogs.com/q6GPXiH-pLBsrs7pLQDKFgFB43t85ZAlZN0XSdFiQtM/rs:fit/g:sm/q:90/h:586/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2Nzc1/MC0xNDQzMjIwNjMz/LTExNDcuanBlZw.jpeg', 14, 8, 15),
(19, 'Born in the U.S.A.', 'Born in the U.S.A. is the seventh studio album by American recording artist Bruce Springsteen, released on June 4, 1984, by Columbia Records.', 1984, 'https://i.discogs.com/fltQHhVK5EGabzwAqAJupEJqZ6RpDhZ1wLZVJoQtrkE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNDMy/MjctMTM2NTM3MzYw/OC0xMDEwLmpwZWc.jpeg', 18, 8, 15),
(20, 'Like a Prayer', '4th studio album; street date: 21st of March, 1989.', 1989, 'https://i.discogs.com/gLRc2G_yx7gPYqvWoG2UYfVkJBVox58sFA4ph0iUBqQ/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNjIz/Ny0xNTM4MzE1NzY2/LTQ2MzQuanBlZw.jpeg', 15, 7, 11),
(21, 'Hysteria', 'Hysteria is Def Leppard\'s fourth studio album, released on 3 August 1987 (US) through Mercury Records. It is Def Leppard\'s best-selling album to date, selling over 20 million copies worldwide, including 12 million in the US, and spawning seven hit singles. The album charted at number one on both the Billboard 200 and the UK Albums Chart. Like Pyromania before it, it was produced by Robert John \"Mutt\" Lange.', 1987, 'https://i.discogs.com/kWNw9YJRW9UNawV4OYSG2GWjv_Glr0w1HEq8iYCquis/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyMTQz/Ni0xNDU3MTU1NTI3/LTg2NDAuanBlZw.jpeg', 16, 1, 7),
(22, 'Graceland', 'Graceland is the seventh solo studio album by the American singer-songwriter Paul Simon. It was produced by Simon, engineered by Roy Halee and released on August 25, 1986, by Warner Bros. Records.', 1986, 'https://i.discogs.com/OQ6ma_gxpI0Nv6Dk4oK4X6t6r9rmqijyt4-RqE9zlM4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMzEz/ODgtMTQyOTAyMDg0/MC02OTc3LnBuZw.jpeg', 17, 11, 5),
(23, 'Rio', 'Rio is the second studio album by the English new wave band Duran Duran, released on 10 May 1982 through EMI. Produced by Colin Thurston, the band wrote and demoed most of the material before recording the album at AIR Studios in London from January to March 1982. The band utilised more experimentation compared to their debut album, from vibraphone and marimba to the sound of a cigarette being lit and cracking ice cubes. Andy Hamilton played a saxophone solo on \"Rio\".', 1982, 'https://i.discogs.com/ORVO4GeYV4u7dIrXw-cmnTsSAFLTxJuUR9v2MYEplP8/rs:fit/g:sm/q:90/h:595/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0MDg0/My0xNDc3ODIxODI0/LTgyNjUuanBlZw.jpeg', 19, 8, 15),
(24, 'Kind of Blue', 'Kind of Blue Columbia Matrix Codes.', 1959, 'https://i.discogs.com/wjjMk1xCKdaPbsUbaXWzHBNi3K-fmt3CYkQGqt0c_Z8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYyNzYx/ODMtMTY3NzAwMzM5/Ni0yMDQ1LmpwZWc.jpeg', 20, 11, 5),
(25, 'The Beatles', 'The Beatles is the ninth studio album by the British rock group The Beatles, released on November 22, 1968 in Great Britain and Germany. In Great Britain it was their tenth album, including the compilation album, in Germany it was their thirteenth album overall. It was their 16th album in the US, where it was released on November 25, 1968.', 1968, 'https://i.discogs.com/AXyK6qGYgcalRhTY7Z1P3mLJjbxVnXc-jCBhI7UxRv4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1NjY2/My0xNjczNjI5Nzk4/LTkwOTkuanBlZw.jpeg', 21, 1, 6),
(27, 'Highway 61 Revisited', 'There is a 2017 mispress released as Highway 61 Revisited containing the audio of Bringing It All Back Home.', 1965, 'https://i.discogs.com/SFuuIpiD9lB8uQV2Fiw83xjct3qM0x1PiG3-NNtnC48/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY1OTAw/MDQtMTQyMjY0ODIx/Mi05NjIzLmpwZWc.jpeg', 23, 5, 19),
(28, 'The Velvet Underground and Nico', 'There are three versions of the back cover of the original American release:\r\n1st - Has an image of actor Eric Emerson projected upside-down on the wall behind the band. Commonly known as the \"Torso\" cover (despite showing only Emerson\'s head and arms), this variant is also referred to as “first state” or the “Emerson Cover.”\r\n2nd - The actor\'s image is covered by a large black sticker.\r\n3rd - The actor\'s image is airbrushed out.', 1967, 'https://i.discogs.com/n3oBB3USupszWz-I1uKVWAQiDmMFxHIj4Z5ZtOdwE4E/rs:fit/g:sm/q:90/h:600/w:599/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUwMzQw/NDUtMTYxMDkyMjc5/MC0yNzY4LmpwZWc.jpeg', 24, 5, 19),
(29, 'Led Zeppelin', 'The English rock band Led Zeppelin was active from 1968 to 1980. During that time they released eight studio albums. The debut studio album with the band of the same name Led Zeppelin was released in 1968.', 1969, 'https://i.discogs.com/Va-NQ8KosGb_4pAjsS6Unz4g1Jx7RdAPIMtK1luSX5w/rs:fit/g:sm/q:90/h:600/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMTgy/MTctMTUzMjA1NTUx/Ni02OTg1LmpwZWc.jpeg', 25, 9, 20),
(30, 'Are You Experienced', 'The debut album by The Jimi Hendrix Experience and the first album on the Track Record label, Are You Experienced was initially issued in mono and then \'enhanced stereo\' on later issues. Recordings had already begun in late October 1966, with the band producing material that does not appear on this album, but was released as singles leading up to its release (A common marketing practice at that time); (Hey Joe/Stone Free [Polydor, Dec 66], Purple Haze/51st Anniversary [Track, Mar 67] & The Wind Cries Mary/Highway Chile [coinciding with album issue].', 1967, 'https://i.discogs.com/2-7PGO_kBzci2lp_uafKMXvnH7gbXI0F9knTOUBtay4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk5MzAy/OC0xNTc2MzMzMjAx/LTg1MzAuanBlZw.jpeg', 5, 10, 16),
(31, 'Sgt. Pepper\'s Lonely Hearts Club Band', 'The album is considered one of the first pop music concept albums and a milestone of the genre. With over 32 million copies sold, it is one of the world\'s best-selling music albums.', 1967, 'https://i.discogs.com/JNbAKGFjLM_LrPZVRlNtWlYTgpUwXTZcqbC5okuCP-M/rs:fit/g:sm/q:90/h:590/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5OTQ5/Ny0xNDU2MDQ3Mzgz/LTk0ODkuanBlZw.jpeg', 21, 5, 19),
(32, 'Nevermind', 'Nevermind is the second studio album by the American rock band Nirvana, released on September 24, 1991, by DGC Records. It was Nirvana\'s first release on a major label and the first to feature drummer Dave Grohl.', 1991, 'https://i.discogs.com/XoAXkLe03Vk0Kt-oQqw7V9uW5nBzQdNvZd0zar5mOiQ/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2NzA4/NC0xMjYzMDk1NTUz/LmpwZWc.jpeg', 27, 11, 5),
(33, 'The Chronic', 'The Chronic is the debut studio album by the American hip hop producer and rapper Dr. Dre. It was released on December 15, 1992, by his record label Death Row Records and distributed by Interscope Records. Recording sessions took place in June 1992 at Death Row Studios in Los Angeles and at Bernie Grundman Mastering in Hollywood.', 1992, 'https://i.discogs.com/i6Y8NW7nVRqlVrNZZlRDMlCiwBSyLahF_b8fqeJ57wk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyNjA4/Mi0xMjM5ODk0Mjcx/LmpwZWc.jpeg', 28, 5, 19),
(34, 'OK Computer', 'This article is about the studio album by Radiohead. For the television series, see OK Computer (TV series).', 1997, 'https://i.discogs.com/F_KSyKjGi2YN5SBttMhdgP2zyNdmHv7HHWvDVGj3Shg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5NTA3/OTgtMTM4ODYyMzYx/MS0yMzYyLmpwZWc.jpeg', 38, 7, 11),
(35, 'The Miseducation of Lauryn Hill', 'The Miseducation of Lauryn Hill is the debut solo album by American singer and rapper Lauryn Hill. It was released on August 25, 1998, by Ruffhouse Records and Columbia Records. The Miseducation of Lauryn Hill is a neo soul and R&B album with some songs based in hip hop soul and reggae.', 1998, 'https://i.discogs.com/I0kfeLY7Jo3mhf3IB7lE7URdBu98gf4N8VKh3zQM1rU/rs:fit/g:sm/q:90/h:600/w:590/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyNzAy/MC0xMzAxMjQzNTM1/LmpwZWc.jpeg', 29, 2, 24),
(36, 'The Bends', 'The Bends is the second studio album by the English rock band Radiohead, released on 13 March 1995 by Parlophone. Most tracks were produced by John Leckie, with extra production by Radiohead, Nigel Godrich and Jim Warren. The Bends combines guitar songs and ballads, with more restrained arrangements and cryptic lyrics than Radiohead\'s debut album, Pablo Honey (1993).', 1995, 'https://i.discogs.com/i6MXaXRBfHBSPzqpEXlpts2oGlGYFUaoZDW-OFPVBo4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM2ODEx/Ni0xNTg4ODgzOTM2/LTgyNDcuanBlZw.jpeg', 38, 1, 6),
(37, 'Enter the Wu-Tang (36 Chambers)', 'Enter the Wu-Tang (36 Chambers) is the debut studio album by American hip hop group Wu-Tang Clan, released on November 9, 1993, by Loud Records. Recording sessions took place during late 1992 to early 1993 at Firehouse Studio in New York City, and the album was produced by the group\'s de facto leader RZA. Its title originates from the martial arts films Enter the Dragon (1973) and The 36th Chamber of Shaolin (1978).', 1994, 'https://i.discogs.com/scXBPYh3dzkxBl5HfbgJJuvdJxxPd_WQAfuvxJJ4Ns8/rs:fit/g:sm/q:90/h:592/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExODQz/NS0xNjIyNjY2MTQ2/LTEwODIuanBlZw.jpeg', 30, 5, 19),
(38, 'Automatic for the People', 'Automatic For The People is the eighth studio album from American alternative rock band R.E.M., recorded between June 1991 and July 1992 and released by Warner Bros. Records on October 5, 1992 in the United Kingdom and Europe, and on the following day in the United States. R.E.M. began production on the album while their previous album, Out Of Time (1991), was still ascending top albums charts and achieving global success. Aided by string arrangements from John Paul Jones, Automatic For The People features ruminations on mortality, loss, mourning and nostalgia.', 1992, 'https://i.discogs.com/zss3qpeEd2aoOcQzvdwCCEhSmdJek96ABt6CjfO0Qmk/rs:fit/g:sm/q:90/h:590/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMzkw/NzEtMTI0MzYyMjA4/Mi5qcGVn.jpeg', 31, 3, 10),
(39, 'The Downward Spiral', 'This is the second studio album from Nine Inch Nails and their most commercially successful. It reached number 2 in the Billboard Top 200 and produced four singles: &amp;#34;March of the Pigs&amp;#34;, &amp;#34;Closer&amp;#34;, &amp;#34;Piggy&amp;#34; (radio only), and &amp;#34;Hurt&amp;#34; (radio only).', 1994, 'https://i.discogs.com/3ojla1eXxvtZKHkXureOswYOv-apRsSi-Ys73dodmtc/rs:fit/g:sm/q:90/h:536/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg4NTE4/NjUtMTQ3MDEwOTA3/Ny04MjE5LmpwZWc.jpeg', 32, 4, 18),
(40, 'Kid A', 'Kid A is the fourth studio album by the English rock band Radiohead, released on 2 October 2000 by Parlophone. It was recorded with their producer, Nigel Godrich, in Paris, Copenhagen, Gloucestershire and Oxfordshire.', 2000, 'https://i.discogs.com/_zg0Us0N_anqCz9hJvFGeRK2v69eDDCxQnHkd7RcgTk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc0NzQz/LTE1NDg5MDI2NDMt/Mzg2OS5qcGVn.jpeg', 38, 9, 7),
(41, 'Yankee Hotel Foxtrot', 'Yankee Hotel Foxtrot is the fourth studio album by American rock band Wilco, first released on September 18, 2001. Recording sessions for the album began in late 2000.', 2002, 'https://i.discogs.com/GZTjLOTPNerFOKOT3YDI5bLmBWX11ap0PiqDjgXf1Ec/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ0MjY1/MjUtMTQwOTMzODUz/NC05MDMyLmpwZWc.jpeg', 33, 4, 23),
(44, 'American Idiot', 'American Idiot is the seventh studio album by American rock band Green Day, released on September 21, 2004, by Reprise Records. The album was produced by Rob Cavallo in collaboration with Green Day, an arrangement the group have been using since they signed with a major label.', 2004, 'https://i.discogs.com/hKIvFBg9gGKs_K89iDQqDIjpeVLug9vRTdSK1u5rUyo/rs:fit/g:sm/q:90/h:589/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk3Mzcw/Ni0xNDg4MTYzOTE2/LTg1MTcuanBlZw.jpeg', 36, 2, 27),
(45, 'Funeral', 'Funeral is the debut studio album by Canadian indie rock band Arcade Fire, released on September 14, 2004 by Merge Records. Preliminary recordings for Funeral were made during the course of a week in August 2003 at the Hotel2Tango in Montreal, Quebec, and the recording was completed later that year all in an analogue recording format.', 2004, 'https://i.discogs.com/rcc6N5KItuTqyLkaOjGjsyvb02miEjmB21AJxZz061s/rs:fit/g:sm/q:90/h:543/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQzMjkz/Mi0xNDI3MDEyMDk1/LTE4MDguanBlZw.jpeg', 37, 9, 8),
(46, 'Graduation', 'Graduation is the third studio album by American rapper and producer Kanye West, released on September 11, 2007, through Def Jam Recordings and Roc-A-Fella Records. Recording sessions took place between 2005 and 2007 at several studios in New York and Los Angeles. It was primarily produced by West himself, with contributions from various other producers, including DJ Toomp. The album also features guest appearances from recording artists such as Dwele, T-Pain, Lil Wayne, Mos Def, DJ Premier, and Chris Martin. The cover art and its interior artwork were designed by Japanese contemporary artist Takashi Murakami.', 2007, 'https://i.discogs.com/ZGCZsgTZlSxAbspOky80WD6jI_tc6zoJuXfqZAEWYkI/rs:fit/g:sm/q:90/h:537/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwNjY2/MDEtMTYzMjU2Nzcx/Mi0xNTg2LnBuZw.jpeg', 42, 2, 22),
(48, 'Catch Me If You Can', 'Catch Me If You Can is the debut studio album by British rapper Bashy, released on 1 June 2009. Hiphop.com rated the album \'good\' saying \"Catch Me If You Can is a debut album that perfectly encapsulates how hip hop has become the world\'s local music. With vocal accents, lyrical references, swagger and varied production styles that will take a minute for the non-Brit to get their head around, much of this likable and well-intentioned set still deserves wider attention.\"', 2009, 'https://i.discogs.com/9ee1xVw-FZdIQGkRM1F486ge7oSPXK7XWFv1OAWVELU/rs:fit/g:sm/q:90/h:597/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4MjEy/OTctMTM2NTA0MDUy/OC05NDUyLmpwZWc.jpeg', 39, 5, 12),
(49, 'Merriweather Post Pavilion', 'Merriweather Post Pavilion is the eighth studio album by American experimental pop group Animal Collective, released in January 2009 on Domino Records. The group recorded the album as a trio featuring members Panda Bear (Noah Lennox), Avey Tare (Dave Portner) and Geologist (Brian Weitz), with co-production by Ben H. Allen. It is titled after the Maryland venue of the same name, where Portner and Weitz attended concerts in their youth.', 2009, 'https://i.discogs.com/9LdgWgf2-8xZHP3-JU1Kk6hi9x3WOFXxSTiQX1EcHTE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1OTIx/MTgtMTM4NTMzMTU5/My04MDIwLmpwZWc.jpeg', 40, 3, 7),
(50, 'Oracular Spectacular', 'Oracular Spectacular is the debut studio album by the American band MGMT, released on October 2, 2007, by RED Ink and physically on January 22, 2008, by Columbia.', 2007, 'https://i.discogs.com/AQuXZqMV9BjSh6Cp7KMjxQPqSQrSs22UDzfSjYUFwEw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTk1MTI2/NDAtMTQ4MTg3Njg5/Mi02NjA1LmpwZWc.jpeg', 41, 8, 13),
(51, 'My Beautiful Dark Twisted Fantasy', 'My Beautiful Dark Twisted Fantasy is the fifth studio album by American rapper and producer Kanye West. It was released by Def Jam Recordings and Roc-A-Fella Records on November 22, 2010, following a period of public controversy for West.', 2010, 'https://i.discogs.com/n6dPol8wjBFrb2XQQlfFGFMu-bnuuMEDIgkzauiXIAM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MDY5/NTItMTU4NDQ3OTU2/Mi0xOTY3LmpwZWc.jpeg', 42, 5, 27),
(52, '21', '21 is the second studio album by English singer-songwriter Adele. It was released on 24 January 2011[1] in Europe by XL Recordings and on 22 February 2011 in North America by Columbia Records. The album was named after the age of the singer during its production. 21 shares the Motown/soul influences of her 2008 debut album 19, but also draws influence from the American country and Southern blues music that Adele started listening to during the North American leg of her tour An Evening with Adele. Composed in the aftermath of the singer&#39;s separation from her then partner, the album explores themes of heartbreak, healing, introspection, and forgiveness.', 2011, 'https://i.discogs.com/pbgKc7liXRhTdGM1zNhToDidUDYjK7_CQsxNaXxQTtE/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2NjQ1/ODktMTQ1MjI2OTk5/NS03Mjk4LnBuZw.jpeg', 43, 11, 22),
(53, 'Bon Iver', 'Bon Iver (/boʊn iːˈvɛər/; officially known as Bon Iver, Bon Iver)[4] is the second studio album from American indie folk band Bon Iver, released on June 17, 2011.[5] The album is composed of 10 songs and was seen as a new musical direction for the band.', 2011, 'https://i.discogs.com/I9D3SYmefCXXU5sNKTcMjNX3xEtKivzFKkvosT5jLUQ/rs:fit/g:sm/q:90/h:400/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI5NDA4/NzYtMTMwODMyMDky/Ni5qcGVn.jpeg', 63, 6, 2),
(54, 'Channel Orange', 'Channel Orange (stylized as channel ORANGE) is the debut studio album by American R&B singer-songwriter Frank Ocean. It was released on July 10, 2012, by Def Jam Recordings. After releasing his mixtape Nostalgia, Ultra the previous year, Ocean began writing new songs with Malay, a producer and songwriter who then assisted him with recording Channel Orange at EastWest Studios in Hollywood. Rather than rely on samples as he had with his mixtape, Ocean wanted to approach sound and song structure differently on the album. Other producers who worked on the album included Om\'Mas Keith and Pharrell Williams. Its recording also featured guest appearances from Odd Future rappers Earl Sweatshirt and Tyler, the Creator, vocalist/songwriter André 3000, and guitarist John Mayer.', 2012, 'https://i.discogs.com/2iKKnc0QOYw2-boATOpXWZnrTXMLmlHJydIBC4ovrQI/rs:fit/g:sm/q:90/h:544/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MzQ0/MjUtMTY2MjUwNTIw/MS0zMTIxLmpwZWc.jpeg', 45, 2, 9),
(55, 'Blonde', 'The title of the original pressing is stylized \"Blond\"; this pressing is titled \"Blonde\".', 2022, 'https://i.discogs.com/zMe1fzwVZTbfBimS0hONvRN8D0T5GgNXJ4lfxbIm8rI/rs:fit/g:sm/q:90/h:566/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1NTAw/ODc3LTE2NzQ3Nzgy/MzgtMjgxMi5qcGVn.jpeg', 45, 3, 15),
(57, 'To Pimp a Butterfly', 'To Pimp a Butterfly is the third studio album by American rapper Kendrick Lamar. It was released on March 15, 2015, by Top Dawg Entertainment, Aftermath Entertainment and Interscope Records. The album was recorded in studios throughout the United States, with production from Sounwave, Terrace Martin, Taz &amp;amp;amp;amp;amp;#34;Tisa&amp;amp;amp;amp;amp;#34; Arnold, Thundercat, Rahki, LoveDragon, Flying Lotus, Pharrell Williams, Boi-1da, Knxwledge, and several other high-profile hip hop producers, as well as executive production from Dr. Dre and Anthony &amp;amp;amp;amp;amp;#34;Top Dawg&amp;amp;amp;amp;amp;#34; Tiffith. Guest appearances include Thundercat, George Clinton, Bilal, Anna Wise, Snoop Dogg, James Fauntleroy, Ronald Isley, and Rapsody.', 2015, 'https://i.discogs.com/mzZN2JyPeiMrz8YnZd04bKifNZ36K5zMECcfHvnTzFk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NTc5/NTctMTQ0Mzk4MjAy/NC01NTk2LmpwZWc.jpeg', 65, 10, 17),
(58, 'Random Access Memories', 'Fifth and possibly final studio album. Includes collaborations with Pharrell Williams, Julian Casablancas, Panda Bear, Nile Rodgers, Todd Edwards, Giorgio Moroder.', 2013, 'https://i.discogs.com/zFVZE4s0zSXUIM7OMl2UDckSq0zlopdHBHRz23zqMJk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ1NzAz/NjYtMTUzOTI5NTA5/Mi02MDg3LnBuZw.jpeg', 34, 2, 12),
(59, 'The Heist', 'The Heist is the debut studio album by American hip hop duo Macklemore & Ryan Lewis. It was released on October 9, 2012, by Macklemore LLC, distributed under the Alternative Distribution Alliance. The album was independently self-produced, self-recorded and self-released by the duo, with no mainstream promotion or support. After the album\'s release, the duo hired Warner Music Group\'s radio promotion department to help the push with their singles for a small percentage of the sales.', 2012, 'https://i.discogs.com/y80LBUivPaVjA8b4HYxCfhwLaZmwiOZU57ZZBhonJfc/rs:fit/g:sm/q:90/h:540/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM5NDE1/NjgtMTM1ODA0MDMx/Ny02Mzg1LmpwZWc.jpeg', 48, 9, 21),
(60, 'My Head Is an Animal', 'My Head Is an Animal is the debut studio album by the Icelandic indie folk band Of Monsters and Men,[2] released through Record Records in Iceland on 20 September 2011. After their success, topping the Icelandic charts with their debut single, \"Little Talks\", the band signed with Universal Music Group and the album was released internationally through Republic Records on 3 April 2012. The title of the album comes from the second line in \"Dirty Paws\".', 2011, 'https://i.discogs.com/QyHS34j4lTkRb1yiTVZPZmrDJxuxvD0H04Q_jz9UB5Q/rs:fit/g:sm/q:90/h:355/w:354/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgxODk0/ODYtMTQ1NjgxMTk2/Ni05MDc4LmpwZWc.jpeg', 49, 4, 26),
(61, 'The Best of Muddy Waters', 'All tracks recorded between 1948 and 1954', 1958, 'https://i.discogs.com/nwTyQNoK2EvnwMrwDQNpHMRGZgNoG3wqUZNl2vTY6PI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMDYx/MTAwLTE1MDkxMjY0/MzAtNTY2Ni5qcGVn.jpeg', 50, 10, 7),
(73, 'Jazz', 'The entire back catalogue was re-issued for the first time on CD in 1986, and again on CD/tape in remastered form in 1991 for the US market (via Hollywood Records and adding a few non-album tracks or remixes not included on the original versions). Parlophone also re-issued the remastered versions in 1993/1994, and subsequently several additional re-remastered versions have appeared.', 1978, '/Queen_Jazz.jpg', 61, 11, 5),
(74, 'The Jazz Messengers', 'Recorded on April 5 and May 4, 1956.', 1956, '/Messanger.jpg', 10, 9, 23),
(75, 'The Jazz Messengers', 'Recorded on April 5 and May 4, 1956.', 1956, '/Messanger.jpg', 10, 9, 23),
(76, 'Captain Nemo', 'Nemo is a mysterious figure. Though originally of unknown nationality, he is later described as the son of an Indian raja. A scientific visionary, he roams the depths of the seas in his submarine, the Nautilus, which was assembled from parts manufactured in several different countries, then shipped to a cover address. The captain is consumed by a hunger for vengeance and hatred of imperialism; the British Empire is ultimately revealed as his main antagonist.', 2022, '/i1.jpg', 62, 7, 23),
(77, '72 Seasons', 'Die-cut inner gatefold sleeve, 4-page lyric insert, and download code included.', 2023, '/72.jpg', 64, 1, 26),
(78, 'Sings And Plays With Bud Shank, Russ Freeman And Strings', 'Cut directly from the original analog tapes\r\nMastered by Kevin Gray at Cohearent Audio\r\nManufactured at Record Technology Inc. (RTI) on 180 gram vinyl', 2023, '/vin111.jpg', 66, 11, 23),
(79, 'A Saucerful Of Secrets', 'A Saucerful of Secret\'s is the second studio album by the English rock band Pink Floyd, recorded 9 May 1967 – 3 May 1968 and released on June 28, 1968.\r\n', 1968, '/pic1.jpg', 1, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`atrist_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`),
  ADD KEY `FK_collection_user_id` (`user_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genres_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likes_id`),
  ADD KEY `FK_likes_vinyl_id` (`vinyl_id`),
  ADD KEY `FK_likes_user_id` (`user_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_review_user_id` (`user_id`),
  ADD KEY `FK_review_vinyl_id` (`vinyl_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`tracks_id`),
  ADD KEY `FK_tracks_vinyl_id` (`vinyl_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vinyl`
--
ALTER TABLE `vinyl`
  ADD PRIMARY KEY (`vinyl_id`),
  ADD KEY `FK_vinyl_artist_id` (`artist_id`),
  ADD KEY `FK_vinyl_collection_id` (`collection_id`),
  ADD KEY `FK_vinyl_genres_id` (`genres_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `atrist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genres_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `tracks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `vinyl`
--
ALTER TABLE `vinyl`
  MODIFY `vinyl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_collection_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `FK_likes_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_likes_vinyl_id` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_review_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_review_vinyl_id` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE;

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `FK_tracks_vinyl_id` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE;

--
-- Constraints for table `vinyl`
--
ALTER TABLE `vinyl`
  ADD CONSTRAINT `FK_vinyl_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`atrist_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_vinyl_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_vinyl_genres_id` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`genres_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
