-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2014 at 09:16 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `user_management`
--
CREATE DATABASE IF NOT EXISTS `user_management` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `user_management`;

-- --------------------------------------------------------

--
-- Table structure for table `um_user`
--

CREATE TABLE IF NOT EXISTS `um_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=599547 ;

--
-- Dumping data for table `um_user`
--

INSERT INTO `um_user` (`user_id`, `fullname`, `username`, `email`, `password`) VALUES
(1, 'Merritt Floyd', 'Lionel', 'et.euismod.et@purusaccumsaninterdum.org', '7106ZV'),
(2, 'Kermit Roberson', 'Evan', 'magna.Sed@antebibendumullamcorper.co.uk', 'E5T 6E4'),
(3, 'Graiden Yang', 'Magee', 'ornare.lectus.ante@mieleifend.co.uk', '71201'),
(4, 'Colt Sandoval', 'Rigel', 'ipsum.dolor@Proin.ca', '1262'),
(5, 'Zeph Buckner', 'Camden', 'egestas.Sed@aliquam.net', '0646MC'),
(6, 'Nash Franco', 'Colton', 'felis.Nulla@tempusmauris.net', '9874'),
(7, 'Phillip Whitfield', 'Geoffrey', 'dui.Fusce@cubilia.com', '00772'),
(8, 'Kirk Whitfield', 'Randall', 'eu.dui@Maecenasmi.co.uk', '10392'),
(10, 'Chadwick Sampson', 'Vernon', 'mi.felis.adipiscing@etmagnisdis.ca', '12188'),
(11, 'Beck Haley', 'Ralph', 'libero.Morbi.accumsan@liberoestcongue.ca', '81541'),
(12, 'Salvador Austin', 'Alexander', 'pellentesque@Pellentesquehabitantmorbi.com', '97889'),
(13, 'Gannon Skinner', 'Cooper', 'imperdiet.erat@Cum.com', '0085'),
(14, 'Tucker Knowles', 'Hall', 'morbi.tristique.senectus@eratvelpede.edu', 'JK44 4XI'),
(15, 'Ulric Mcconnell', 'Geoffrey', 'metus.Aenean@lacusNulla.ca', '08065'),
(16, 'Harding Coffey', 'Rooney', 'eu@Quisqueliberolacus.edu', '1927'),
(17, 'Kenyon Mclaughlin', 'Amos', 'sociis@ametconsectetueradipiscing.net', '83563'),
(18, 'Ray Goodwin', 'Orson', 'euismod.urna@Duisrisusodio.ca', '20507'),
(19, 'Jerry Ballard', 'Conan', 'cursus@etlacinia.edu', '15876'),
(20, 'Rahim Calhoun', 'Demetrius', 'diam@lacinia.co.uk', '98071-792'),
(21, 'Herman Berg', 'Jonah', 'odio@est.org', '8973'),
(22, 'Reed Pennington', 'Kennan', 'sagittis.felis.Donec@quispedePraesent.com', '21674'),
(23, 'Boris Sellers', 'Phelan', 'Pellentesque.ultricies@neque.ca', 'L7P 6H1'),
(24, 'Talon Gomez', 'Martin', 'Cras.vulputate.velit@tincidunt.edu', '989230'),
(25, 'Judah Norton', 'Wesley', 'eleifend@PhasellusnullaInteger.com', '9247'),
(26, 'Merrill Long', 'Griffith', 'sagittis.felis@ligula.com', '61876-744'),
(27, 'Octavius Meyer', 'Hall', 'Maecenas@lobortisquam.edu', '74511'),
(28, 'Griffith Good', 'Cairo', 'tincidunt.neque.vitae@Aliquamvulputate.co.uk', '33327'),
(29, 'Xavier Parsons', 'Cooper', 'interdum.Sed.auctor@Quisque.net', '5323'),
(30, 'Judah Robertson', 'Jerome', 'nisi@orciluctus.edu', '40809'),
(31, 'Philip Parsons', 'Elton', 'velit.justo@euultrices.net', 'S1 4XD'),
(32, 'Branden Roth', 'Magee', 'ut@fringillaDonec.edu', '78949'),
(33, 'Derek Conner', 'Ryan', 'cursus@Suspendissesagittis.edu', '30311'),
(34, 'Deacon Benson', 'Steel', 'Curabitur.ut@massaVestibulum.edu', '71755-445'),
(35, 'Galvin Olson', 'Steven', 'nonummy.ultricies.ornare@dapibusquamquis.ca', '34485'),
(36, 'Bert Taylor', 'Eric', 'commodo.at.libero@nullaDonecnon.org', '24286'),
(37, 'Octavius Padilla', 'Ivan', 'vitae.orci@Proinvel.net', '21310'),
(38, 'Lance Sherman', 'Aidan', 'iaculis.quis.pede@massanonante.edu', '9447'),
(39, 'Cruz Dalton', 'Silas', 'ultricies@arcuNuncmauris.com', '23094'),
(40, 'Hu Grant', 'Jacob', 'porta.elit@nequevitae.co.uk', 'YA0 4IN'),
(41, 'Josiah Craft', 'Carlos', 'magnis@ultricesposuerecubilia.edu', '681986'),
(42, 'Ezekiel Horne', 'Jared', 'sem@Aliquamrutrum.co.uk', '59249'),
(43, 'Seth James', 'Isaac', 'elementum.purus@ultrices.ca', '9663'),
(44, 'Basil Fields', 'Cyrus', 'eget.venenatis.a@dolor.ca', '3033'),
(45, 'Wyatt Levine', 'Caesar', 'mollis@risus.ca', '25141'),
(46, 'Ross Walter', 'Christian', 'conubia@pedenecante.co.uk', '6900'),
(47, 'Jelani Meyers', 'Denton', 'feugiat.non@aliquet.net', '5886'),
(48, 'Bruno Jensen', 'Keefe', 'Vestibulum@ultriciessem.net', '40704'),
(49, 'Xanthus Vaughn', 'Drake', 'auctor.non@a.edu', '5248'),
(50, 'Yardley Thornton', 'Dante', 'magnis.dis.parturient@semper.net', '71904'),
(51, 'Fletcher Harper', 'Merrill', 'Sed@suscipitest.com', 'M8E 3S0'),
(52, 'Brody Hendrix', 'Oscar', 'Phasellus.dolor@Suspendisseac.com', '91733'),
(53, 'Emerson Estes', 'Zephania', 'malesuada.fames.ac@adipiscing.edu', '7018FR'),
(54, 'Lester Knight', 'Gavin', 'nunc.ac@liberonecligula.edu', '50943'),
(55, 'Adrian Robinson', 'Mohammad', 'Vestibulum.ante@tempus.co.uk', '932957'),
(56, 'Noah Odonnell', 'William', 'consequat.dolor.vitae@aenimSuspendisse.ca', '87376'),
(57, 'Kamal Barron', 'Trevor', 'tincidunt@natoque.net', '20511'),
(58, 'Brody Rodriguez', 'Ezekiel', 'libero.Donec.consectetuer@etcommodoat.ca', '21816'),
(59, 'Aristotle Murray', 'Galvin', 'metus.urna.convallis@pedePraesenteu.org', '76495'),
(60, 'Reuben Clay', 'Elton', 'nibh.sit.amet@eratEtiam.com', '15058-440'),
(61, 'Gregory Velazquez', 'Lester', 'imperdiet.erat@Suspendisse.co.uk', '4818'),
(62, 'August Goodman', 'Kane', 'faucibus.id.libero@pharetrafelis.edu', '4816'),
(63, 'Quamar Sanders', 'Stewart', 'auctor@etlacinia.co.uk', '46905'),
(64, 'Zane Davis', 'Chaim', 'elit.Aliquam@Utsagittislobortis.com', '39600'),
(65, 'Burton Contreras', 'George', 'pretium.aliquet.metus@commodo.ca', '4843'),
(66, 'Allen Clemons', 'Oscar', 'tristique@fringillaornare.net', 'M2S 3W5'),
(67, 'Theodore Olson', 'Nigel', 'urna.nec@risusa.ca', '64997'),
(68, 'Harrison Fitzgerald', 'Chancellor', 'mollis.lectus.pede@aultriciesadipiscing.com', 'E4M 1M0'),
(69, 'Griffith Freeman', 'Mohammad', 'luctus.et@tempor.com', '5506'),
(70, 'Carlos Avery', 'Arsenio', 'magna.Nam.ligula@natoquepenatibus.edu', '13916'),
(71, 'Levi Underwood', 'Justin', 'eu@Inat.net', 'H3C 5VQ'),
(72, 'Ali Austin', 'Hall', 'at.risus@DonectinciduntDonec.net', 'K9B 9Y4'),
(73, 'Berk Hays', 'Kamal', 'euismod.enim@euismodac.ca', '70341'),
(74, 'Garrison Nielsen', 'Keegan', 'vehicula@risus.co.uk', 'AX7 2UT'),
(75, 'Gabriel Rodriguez', 'Brendan', 'luctus.ipsum@apurusDuis.co.uk', '9119RL'),
(76, 'James Shelton', 'Erich', 'vel@molestiesodales.co.uk', '68798'),
(77, 'Rigel Hooper', 'Gareth', 'urna@sapienNuncpulvinar.edu', '11217'),
(78, 'Ezra Grimes', 'Lee', 'luctus.lobortis@eleifendCrassed.co.uk', '6276'),
(79, 'Yuli Hensley', 'Clarke', 'nunc.nulla.vulputate@elementum.net', '70893'),
(80, 'Edan Weber', 'Reese', 'ante.ipsum@aliquetProin.edu', '98775'),
(81, 'Leonard Newton', 'Jason', 'vel.pede@malesuadautsem.co.uk', '74564'),
(82, 'Nigel England', 'Fulton', 'habitant.morbi@taciti.com', 'PT51 7TC'),
(83, 'Isaiah Watkins', 'Matthew', 'Cum.sociis@penatibusetmagnis.org', '39760'),
(84, 'Zeph Russo', 'Zahir', 'mi@tincidunt.com', '29776'),
(85, 'Perry Puckett', 'Elton', 'interdum.enim@augueeutempor.org', '85544'),
(86, 'Theodore Pruitt', 'Graiden', 'Pellentesque.habitant@arcuVestibulumut.edu', '50707'),
(87, 'Brody Gutierrez', 'Zachery', 'venenatis.vel@Donecfeugiat.net', '76990'),
(88, 'Hedley Haney', 'Steven', 'metus.vitae.velit@vitae.net', '9072'),
(89, 'Nero Newton', 'Randall', 'eros.Nam.consequat@enimcommodo.net', '60015'),
(90, 'Keefe Harris', 'Rigel', 'augue@vel.com', 'K4A 2J1'),
(91, 'Steel Blanchard', 'Carlos', 'nibh.Aliquam.ornare@Phaselluselitpede.edu', '2015'),
(92, 'Colton Levy', 'Igor', 'egestas.Aliquam.fringilla@maurisMorbinon.net', '2108MD'),
(93, 'Mark Fuentes', 'Bradley', 'lorem@cursusaenim.com', '86508'),
(94, 'Deacon Valenzuela', 'Timon', 'Cum.sociis@sitamet.com', 'L7A 6Y8'),
(95, 'Derek Graham', 'Timon', 'dapibus@necurna.edu', '3705IS'),
(96, 'Emerson Hopkins', 'Brett', 'semper@justoProin.ca', '7304'),
(97, 'Kibo Oneil', 'Alvin', 'cursus@odio.com', '78882'),
(98, 'Anthony Humphrey', 'Hiram', 'aliquet@nislelementumpurus.org', '37427'),
(99, 'Bradley Hill', 'Declan', 'ut@loremfringilla.edu', '67982'),
(100, 'Calvin Mccarthy', 'Justin', 'quis.diam@luctuset.edu', '67515');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
