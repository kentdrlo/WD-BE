-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 08:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(1, 2, 'bikeImage1.png', 'The Cycling Journey is more than just riding a bike—it’s about\r\n            finding peace, freedom, and happiness. Every pedal clears my mind\r\n            and helps me feel calm and relaxed. Whether I’m biking alone and\r\n            enjoying the quiet moments or riding with friends and sharing adventures, it’s always a memorable experience. Each turn of the wheel brings a sense of accomplishment and joy. Cycling also connects me with nature, letting me appreciate the beauty around me.\r\n    ', NULL),
(2, 2, 'bikeImage2.png', 'Riding with my friends on Biking Island is always a good time. We laugh, explore, and enjoy the ride together. It’s one of my favorite ways to have fun while staying active. Every ride feels like an adventure we’ll always remember. The fresh air and beautiful views make it even better. We often stop to take pictures or just relax by the trails. It’s a simple way to create memories that last forever. ', NULL),
(3, 2, 'bikeImage3.png', 'When I ride my bike, I feel so calm and free. It’s like all my worries go away, and I can enjoy the fresh air and quiet moments. Biking clears my mind and makes me feel good inside, giving me a break from everything. The sound of the wind and the rhythm of pedaling are so relaxing. It feels like I’m connecting with nature every time I ride. Each moment on the bike reminds me how simple things can bring so much peace.', NULL),
(7, 3, 'gameImage1.png', 'Gaming as an escape is like stepping into a whole new world where I\r\n            can leave all my stress behind. It’s my chance to explore exciting\r\n            adventures, solve challenges, and feel completely free. On Game\r\n            Island, I can be whoever I want, whether it’s a hero, an explorer,\r\n            or a strategist. It’s not just about fun—it’s about finding a place\r\n            where I can relax, recharge, and let my imagination run wild. Gaming\r\n            helps me forget reality for a while and return feeling happier and\r\n            refreshed.', NULL),
(8, 3, 'gameImage2.png', 'Nothing beats the thrill of leveling up, winning a match, or discovering something new in a game. Game Island is all about happiness and excitement, where every moment is full of fun and surprises. Every game feels like a new adventure waiting to be explored. It’s a place where you can let your imagination run wild and enjoy endless possibilities.', NULL),
(10, 3, 'gameImage3.png', 'Game Island becomes even better when I play with my friends. We\r\n              team up, compete, and share laughs while enjoying our favorite\r\n              games. It’s the perfect way to bond and make great memories.\r\n              Playing together makes every game more exciting and fun. These\r\n              moments remind me how important friendship is while doing what we\r\n              love.\r\n   ', NULL),
(11, 5, 'musicImage1.png', 'Music is like medicine for my mind and soul. When I feel sad, stressed, or tired, listening to music makes me feel better. It can calm me down when I’m anxious or lift my mood when I’m feeling low. Sometimes, just hearing my favorite songs is enough to make me smile and forget about my problems for a while. Music has a way of healing and bringing comfort, no matter what I’m going through. It’s like having a friend who understands me without needing words.', NULL),
(13, 5, 'musicImage2.png', 'Music makes studying feel less stressful and more enjoyable. When I play my favorite tunes, it helps me stay focused and calm, even during long study sessions. It creates a positive atmosphere that keeps me motivated to finish my work. Whether it’s soft melodies or instrumental beats, music is my secret weapon for staying productive.', NULL),
(14, 5, 'musicImage3.png', '\r\nWhen life feels overwhelming, music is my escape. It brings peace to my mind and fills the air with good vibes. Whether I’m relaxing or vibing with upbeat tracks, it makes every moment better. Music has the power to take me away from reality and transport me to a place where I feel happy, calm, and free. It inspires me to dream and imagine new possibilities. No matter how I feel, there’s always a song that matches my mood and lifts my spirit.', NULL),
(15, 4, 'natureImage1.png', 'Nature Island is where I go to find calm and relax. Surrounded by\r\n            trees, fresh air, and gentle sounds, it’s the perfect spot to clear\r\n            my mind and enjoy the simple beauty of nature. Here, I can truly\r\n            listen to my thoughts and feel at peace with myself. It’s a place\r\n            where time slows down, allowing me to fully appreciate every moment.\r\n            Being there makes me feel more connected to nature and everything\r\n            around me.', NULL),
(16, 4, 'natureImage2.png', 'Nature Island helps me feel more connected to the world around me. I\r\n          can enjoy the beauty of plants, listen to birds singing, and feel the\r\n          ground beneath me. It’s a special way to appreciate nature’s wonders.\r\n          It reminds me how important it is to protect our environment. Being\r\n          surrounded by nature makes me realize how everything in the world is\r\n          connected. Spending time here makes me want to take better care of our\r\n          planet and its beautiful life.', NULL),
(17, 4, 'natureImage3.png', '            Being on Nature Island helps me recharge my energy. Whether I’m\r\n            sitting under the shade of trees or walking along peaceful paths, I\r\n            feel more alive and refreshed with every moment. The fresh air and\r\n            calming sounds help me let go of stress. It’s a place where I can\r\n            relax fully and come back feeling stronger and more focused.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(900) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(2, 'Biking Island', 'A fun and active place where I enjoy riding my bike.', 'Biking Island is where I find freedom on two wheels. Whether I’m\r\n            riding through quiet streets or nature trails, it’s a place where I\r\n            can stay active, explore, and enjoy the outdoors. Biking here helps\r\n            me feel energized, clear my thoughts, and have fun while staying\r\n            healthy.', '#f5ed85', 'pImages1.png', 'active'),
(3, 'Game Island', 'A world of fun where I play mobile games and unwind.', 'Game Island is where I lose myself in the excitement of mobile\r\n            games. It’s my go-to place to relax, challenge myself, and have fun.\r\n            Whether I’m solving rubix, teaming up with friends, or reaching new\r\n            levels, gaming here keeps me entertained and lets me explore new\r\n            adventures.', NULL, 'pImages2.png', 'active'),
(4, 'Nature Island', 'A peaceful place where I connect with nature.', 'Nature Island is my quiet escape to the beauty of the outdoors.\r\n            Surrounded by trees, fresh air, and calm sounds, it’s where I can\r\n            relax, find peace, and recharge. This island lets me enjoy alone\r\n            time while appreciating the simple joys that nature brings. It’s a\r\n            place where I feel free and connected to the world around me.', NULL, 'pImages3.png', 'active'),
(5, 'Music Island', 'A place where music brings peace, focus, and good vibes.', 'Music Island is where melodies and rhythms come alive. It’s my\r\n            escape when I need to chill, focus, or feel at peace. Listening to\r\n            music here helps me study, clears my mind, and takes me to a world\r\n            of pure vibes and emotions. It\'s the perfect place to recharge and\r\n            find inspiration whenever I need it.', NULL, 'pImages4.png', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
