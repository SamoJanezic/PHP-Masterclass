-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: db
-- Čas nastanka: 15. maj 2022 ob 19.41
-- Različica strežnika: 10.3.34-MariaDB-1:10.3.34+maria~focal-log
-- Različica PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `db`
--

-- --------------------------------------------------------

--
-- Struktura tabele `image`
--

CREATE TABLE `image` (
  `ID` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `image`
--

INSERT INTO `image` (`ID`, `url`, `alt`) VALUES
(1, 'https://www.fillmurray.com/284/196', 'Fill Murray placeholder image.'),
(2, 'https://www.fillmurray.com/300/250', 'Fill Murray placeholder image.'),
(3, 'https://www.fillmurray.com/300/200', 'Fill Murray placeholder image.'),
(4, 'https://www.fillmurray.com/150/360', 'Fill Murray placeholder image.');

-- --------------------------------------------------------

--
-- Struktura tabele `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` int(11) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `posts`
--

INSERT INTO `posts` (`ID`, `title`, `content`, `image`, `author`, `created`, `updated`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, 1652345293, 1652345293),
(2, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 2, 1, 1652345293, 1652345293),
(3, 'Why do we use it??', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 1, 1652345293, 1652345293),
(4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 3, 1, 1652345293, 1652345293),
(5, 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, 1652345293, 1652345293);

-- --------------------------------------------------------

--
-- Struktura tabele `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `name`, `surname`) VALUES
(1, 'janez.novak@example.com', '$2y$10$Xudxc0XYPOs9o4lP8evbleLajAEEJ6wWiv/CyoFIdcjFP5cxDYkFO', 'Janez', 'Novak');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `image`
--
ALTER TABLE `image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT tabele `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT tabele `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
