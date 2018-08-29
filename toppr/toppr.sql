-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 02:34 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toppr`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cls_id` int(11) NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `cls_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='class info';

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cls_id`, `sub_id`, `cls_name`) VALUES
(17, 3, 'CLASS-5'),
(18, 4, 'CLASS-5'),
(19, 5, 'CLASS-6'),
(20, 4, 'CLASS-6'),
(21, 5, 'CLASS-7'),
(22, 4, 'CLASS-7'),
(23, 6, 'CLASS-8'),
(24, 7, 'CLASS-8'),
(25, 4, 'CLASS-8'),
(26, 8, 'CLASS-8'),
(27, 9, 'CLASS-8'),
(28, 10, 'CLASS-8'),
(29, 11, 'CLASS-8'),
(30, 12, 'CLASS-8'),
(31, 13, 'CLASS-8'),
(32, 6, 'CLASS-9'),
(33, 7, 'CLASS-9'),
(34, 4, 'CLASS-9'),
(35, 8, 'CLASS-9'),
(36, 9, 'CLASS-9'),
(37, 10, 'CLASS-9'),
(38, 11, 'CLASS-9'),
(39, 12, 'CLASS-9'),
(40, 14, 'CLASS-9'),
(41, 13, 'CLASS-9'),
(42, 6, 'CLASS-10'),
(43, 7, 'CLASS-10'),
(44, 4, 'CLASS-10'),
(45, 8, 'CLASS-10'),
(46, 9, 'CLASS-10'),
(47, 10, 'CLASS-10'),
(48, 11, 'CLASS-10'),
(49, 12, 'CLASS-10'),
(50, 13, 'CLASS-10'),
(51, 14, 'CLASS-10'),
(52, 6, 'CLASS-11'),
(53, 7, 'CLASS-11'),
(54, 4, 'CLASS-11'),
(55, 6, 'CLASS-12'),
(57, 4, 'CLASS-12'),
(58, 7, 'CLASS-12'),
(59, 6, 'CLASS-12 PLUS'),
(60, 7, 'CLASS-12 PLUS'),
(61, 4, 'CLASS-12 PLUS');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `opt_id` int(11) NOT NULL,
  `q_id` int(11) DEFAULT NULL,
  `opt_text` varchar(200) DEFAULT NULL,
  `opt_is_answer` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='options information';

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `tps_id` int(11) DEFAULT NULL,
  `q_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='questions info';

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` int(11) NOT NULL,
  `sub_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='subjects info';

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `sub_name`) VALUES
(3, 'evs'),
(4, 'maths'),
(5, 'science'),
(6, 'physics'),
(7, 'chemistry'),
(8, 'biology'),
(9, 'logical reasoning'),
(10, 'history'),
(11, 'civics'),
(12, 'geography'),
(13, 'english'),
(14, 'economics');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `tps_id` int(11) NOT NULL,
  `cls_id` int(11) DEFAULT NULL,
  `tps_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='topics info';

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`tps_id`, `cls_id`, `tps_name`) VALUES
(1, 17, 'On the Move Again'),
(2, 17, 'Like Father Like Daughter'),
(3, 17, 'Whose Forests?'),
(4, 17, 'No Place for Us?'),
(5, 17, 'Across the Wall'),
(6, 17, 'Who will do this Work?'),
(7, 17, 'Blow Hot, Blow Cold'),
(8, 17, 'When the Earth Shook!'),
(9, 17, 'A Shelter so High!'),
(10, 17, 'What if it Finishes?'),
(11, 17, 'Sunita in Space'),
(12, 17, 'Walls Tell Stories'),
(13, 17, 'Up You Go'),
(14, 17, 'A Treat for Mosquito'),
(15, 17, 'Experiments with Water'),
(16, 17, 'Every Drop Counts'),
(17, 17, 'Seeds and Seeds'),
(18, 17, 'Mangoes Round the Year'),
(19, 17, 'From Tasting to Digestion'),
(20, 17, 'Super Senses'),
(21, 17, 'On the Move Again'),
(22, 17, 'Like Father Like Daughter'),
(23, 17, 'Whose Forests?'),
(24, 17, 'No Place for Us?'),
(25, 17, 'Across the Wall'),
(26, 17, 'Who will do this Work?'),
(27, 17, 'Blow Hot, Blow Cold'),
(28, 17, 'When the Earth Shook!'),
(29, 17, 'A Shelter so High!'),
(30, 17, 'What if it Finishes?'),
(31, 17, 'Sunita in Space'),
(32, 17, 'Walls Tell Stories'),
(33, 17, 'Up You Go'),
(34, 17, 'A Treat for Mosquito'),
(35, 17, 'Experiments with Water'),
(36, 17, 'Every Drop Counts'),
(37, 17, 'Seeds and Seeds'),
(38, 17, 'Mangoes Round the Year'),
(39, 17, 'From Tasting to Digestion'),
(40, 17, 'Super Senses'),
(41, 18, 'Comparison of Quantities'),
(42, 18, 'Multiplication and Division'),
(43, 18, 'Charts'),
(44, 18, 'Area and its Boundary'),
(45, 18, 'Tenths and Hundredths'),
(46, 18, 'Boxes and Sketches'),
(47, 18, 'Mapping Your Way'),
(48, 18, 'Patterns'),
(49, 18, 'Multiples and Factors'),
(50, 18, 'Symmetry'),
(51, 18, 'Parts and Wholes'),
(52, 18, 'Perimeter and Area'),
(53, 18, 'Shapes and Angles'),
(54, 18, 'Size and Quantity'),
(55, 19, 'Garbage In, Garbage Out'),
(56, 19, 'Air Around Us'),
(57, 19, 'Water'),
(58, 19, 'Fun with Magnets'),
(59, 19, 'Electricity and Circuits'),
(60, 19, 'Light, Shadows and Reflections'),
(61, 19, 'Motion and Measurement of Distances'),
(62, 19, 'The Living Organsims and Their Surroundings'),
(63, 19, 'Body Movements'),
(64, 19, 'Getting to Know Plants'),
(65, 19, 'Changes Around Us'),
(66, 19, 'Separation of Substances'),
(67, 19, 'Sorting Materials Into Groups'),
(68, 19, 'Fibre To Fabric'),
(69, 19, 'Components of Foods'),
(70, 19, 'Food: Where Does it Comes From?'),
(71, 20, 'Practical Geometry'),
(72, 20, 'Symmetry'),
(73, 20, 'Ratios and Proportions'),
(74, 20, 'Algebra'),
(75, 20, 'Mensuration'),
(76, 20, 'Data Handling'),
(77, 20, 'Decimals'),
(78, 20, 'Fractions'),
(79, 20, 'Integers'),
(80, 20, 'Understanding Elementary Shapes'),
(81, 20, 'Basic Geometrical Ideas'),
(82, 20, 'Playing with Numbers'),
(83, 20, 'Whole Numbers'),
(84, 20, 'Knowing Our Numbers'),
(85, 21, 'Wastewater Story'),
(86, 21, 'Forest : Our lifeline'),
(87, 21, 'Water: A Precious Resource'),
(88, 21, 'Light'),
(89, 21, 'Electric Current and its Effect'),
(90, 21, 'Motion and Time'),
(91, 21, 'Reproduction in Plants'),
(92, 21, 'Transportation in Animals and Plants'),
(93, 21, 'Respiration in Organism'),
(94, 21, 'Soil'),
(95, 21, 'Wind, Storms and Cyclones'),
(96, 21, 'Weather, Climate and Adaptation of Animals to climate'),
(97, 21, 'Physical and Chemical Changes'),
(98, 21, 'Acids, Bases and Salts'),
(99, 21, 'Heat'),
(100, 21, 'Fibre to Fabric'),
(101, 21, 'Nutrition in Animals'),
(102, 21, 'Nutrition in Plant'),
(103, 22, 'Visualising Solid Shapes'),
(104, 22, 'Symmetry'),
(105, 22, 'Exponents and Powers'),
(106, 22, 'Algebraic Expressions'),
(107, 22, 'Perimeter and Area'),
(108, 22, 'Practical Geometry'),
(109, 22, 'Rational Numbers'),
(110, 22, 'Comparing Quantities'),
(111, 22, 'Congruence of Triangles'),
(112, 22, 'The Triangle and its Properties'),
(113, 22, 'Lines and Angles'),
(114, 22, 'Simple Equations'),
(115, 22, 'Data Handling'),
(116, 22, 'Fractions and Decimals'),
(117, 22, 'Integers'),
(118, 23, 'Stars And The Solar System'),
(119, 23, 'Light'),
(120, 23, 'Some Natural Phenomena'),
(121, 23, 'Sound'),
(122, 23, 'Friction'),
(123, 23, 'Force and Pressure'),
(124, 24, 'Pollution of air and water'),
(125, 24, 'Chemical effects of electric current'),
(126, 24, 'Combustion and flame'),
(127, 24, 'Materials: Metals and Non-Metals'),
(128, 24, 'Coal and Petroleum'),
(129, 24, 'Synthetic fibres and plastics'),
(130, 25, 'Playing with Numbers'),
(131, 25, 'Introduction to Graphs'),
(132, 25, 'Factorisation'),
(133, 25, 'Direct and Inverse Proportions'),
(134, 25, 'Exponents and Powers'),
(135, 25, 'Mensuration'),
(136, 25, 'Visualizing solid shapes'),
(137, 25, 'Algebraic Expressions and Identities'),
(138, 25, 'Comparing Quantities'),
(139, 25, 'Cubes and Cube Roots'),
(140, 25, 'Squares and Square roots'),
(141, 25, 'Data Handling'),
(142, 25, 'Practical Geometry'),
(143, 25, 'Understanding polygons'),
(144, 25, 'Linear Equations in One Variable'),
(145, 25, 'Rational Number'),
(146, 26, 'Reaching the age of adolescence'),
(147, 26, 'Reproduction in animals'),
(148, 26, 'Cell - Structure and function'),
(149, 26, 'Conservation of plants and animals'),
(150, 26, 'Microorganisms'),
(151, 26, 'Crop production and management'),
(152, 27, 'Verbal Reasoning'),
(153, 27, 'Data Sufficiency'),
(154, 27, 'Images'),
(155, 27, 'Statements'),
(156, 27, 'Cubes and Dices Test'),
(157, 27, 'Blood Relations'),
(158, 27, 'Classification'),
(159, 27, 'Analogy'),
(160, 27, 'Non-Verbal Series'),
(161, 27, 'Syllogism'),
(162, 27, 'Arithmetical Reasoning'),
(163, 27, 'Number-Ranking-Time Sequence'),
(164, 27, 'Calendar and Clock Test'),
(165, 27, 'Puzzle Test'),
(166, 27, 'Mathematical Operations'),
(167, 27, 'Alphabet Test'),
(168, 27, 'Coding-Decoding'),
(169, 27, 'Series Completion'),
(170, 28, 'National Movement and India after Independence'),
(171, 28, 'The Changing World of Visual Arts'),
(172, 28, 'Civilising the Native, Educating the Nation and Social Reform'),
(173, 28, 'Weavers, Iron Smelters and Factory Owners'),
(174, 28, 'Colonialism and the City'),
(175, 28, 'When People Rebel'),
(176, 28, 'Ruling the Countryside and Vision of Golden Age'),
(177, 28, 'From Trade to Territory'),
(178, 29, 'Economic Presence of the Government'),
(179, 29, 'Marginalisation'),
(180, 29, 'The Judiciary'),
(181, 29, 'The Indian Constitution and Secularism'),
(182, 30, 'Human resources'),
(183, 30, 'Industries'),
(184, 30, 'Agriculture'),
(185, 30, 'Mineral and Power Resources'),
(186, 30, 'Resources'),
(187, 31, 'Writing'),
(188, 31, 'Vocabulary'),
(189, 31, 'Transformation of Sentences'),
(190, 31, 'Sentences'),
(191, 31, 'Tenses'),
(192, 31, 'Adverb'),
(193, 31, 'Verb'),
(194, 31, 'Adjective'),
(195, 31, 'Noun'),
(196, 31, 'Reading Comprehension'),
(197, 32, 'Sound'),
(198, 32, 'Work and Energy'),
(199, 32, 'Gravitation'),
(200, 32, 'Force And Laws of Motion'),
(201, 32, 'Motion'),
(202, 33, 'Is matter around us pure'),
(203, 33, 'Matter in our surroundings'),
(204, 33, 'Structure of the atom'),
(205, 33, 'Atoms and Molecules'),
(206, 34, 'Probability'),
(207, 34, 'Statistics'),
(208, 34, 'Surface Areas and Volumes'),
(209, 34, 'Constructions'),
(210, 34, 'Circles'),
(211, 34, 'Areas of Parallelograms and Triangles'),
(212, 34, 'Quadrilaterals'),
(213, 34, 'Triangles'),
(214, 34, 'Lines and Angles'),
(215, 34, 'Linear Equations in two variables'),
(216, 34, 'Coordinate Geometry'),
(217, 34, 'Polynomials'),
(218, 34, 'Number Systems'),
(219, 35, 'Improvement in food resources'),
(220, 35, 'Natural resources'),
(221, 35, 'Why do we fall ill?'),
(222, 35, 'Diversity in living organism'),
(223, 35, 'Tissues'),
(224, 35, 'The fundamental unit of life'),
(225, 36, 'Verbal Reasoning'),
(226, 36, 'Data Sufficiency'),
(227, 36, 'Images'),
(228, 36, 'Statements'),
(229, 36, 'Cubes and Dices Test'),
(230, 36, 'Blood Relations'),
(231, 36, 'Classification'),
(232, 36, 'Analogy'),
(233, 36, 'Non-Verbal Series'),
(234, 36, 'Syllogism'),
(235, 36, 'Arithmetical Reasoning'),
(236, 36, 'Number-Ranking-Time Sequence'),
(237, 36, 'Calendar and Clock Test'),
(238, 36, 'Puzzle Test'),
(239, 36, 'Mathematical Operations'),
(240, 36, 'Alphabet Test'),
(241, 36, 'Coding-Decoding'),
(242, 36, 'Series Completion'),
(243, 37, 'Clothing History and Sport'),
(244, 37, 'Forest Society, Pastoralists, Farmers and Colonialism'),
(245, 37, 'Nazism and the Rise of Hitler'),
(246, 37, 'Socialism in Europe and the Russian Revolution'),
(247, 37, 'The French Revolution'),
(248, 38, 'Democratic Rights'),
(249, 38, 'Working of Institutions'),
(250, 38, 'Elections'),
(251, 38, 'Constitutional Design'),
(252, 38, 'Democracy'),
(253, 39, 'Population'),
(254, 39, 'Natural Vegetation and Wildlife'),
(255, 39, 'Climate'),
(256, 39, 'Drainage'),
(257, 39, 'Physical Features of India'),
(258, 39, 'India - Size and Location'),
(259, 40, 'Food Security in India'),
(260, 40, 'Poverty as Challenge'),
(261, 40, 'People as Resource'),
(262, 40, 'The Story of Village Palampur'),
(263, 41, 'Writing'),
(264, 41, 'Vocabulary'),
(265, 41, 'Transformation of Sentences'),
(266, 41, 'Sentences'),
(267, 41, 'Tenses'),
(268, 41, 'Conjunction'),
(269, 41, 'Prepositions'),
(270, 41, 'Verb'),
(271, 41, 'Pronoun'),
(272, 41, 'Articles'),
(273, 41, 'Reading Comprehension'),
(274, 42, 'Sources of Energy'),
(275, 42, 'Magnetic Effects of Electric Current'),
(276, 42, 'Electricity'),
(277, 42, 'The Human eye and the colourful world'),
(278, 42, 'Light - Reflection and Refraction'),
(279, 43, 'Periodic classification of elements'),
(280, 43, 'Carbon and its compounds'),
(281, 43, 'Chemical reactions and equations'),
(282, 43, 'Metals and Non-Metals'),
(283, 43, 'Acids, Bases and Salts'),
(284, 44, 'Probability'),
(285, 44, 'Statistics'),
(286, 44, 'Surface Areas and Volumes'),
(287, 44, 'Area Related to Circles'),
(288, 44, 'Constructions'),
(289, 44, 'Circles'),
(290, 44, 'Some Applications of Trigonometry'),
(291, 44, 'Introduction to Trigonometry'),
(292, 44, 'Coordinate Geometry'),
(293, 44, 'Triangles'),
(294, 44, 'Arithmetic Progression'),
(295, 44, 'Quadratic Equations'),
(296, 44, 'Pair of Linear Equations in Two Variables'),
(297, 44, 'Polynomials'),
(298, 44, 'Real Numbers'),
(299, 45, 'Management of natural resources'),
(300, 45, 'Our environment'),
(301, 45, 'Heredity and evolution'),
(302, 45, 'How do organisms reproduce?'),
(303, 45, 'Control and coordination'),
(304, 45, 'Life processes'),
(305, 46, 'Verbal Reasoning'),
(306, 46, 'Data Sufficiency'),
(307, 46, 'Images'),
(308, 46, 'Statements'),
(309, 46, 'Cubes and Dices Test'),
(310, 46, 'Blood Relations'),
(311, 46, 'Classification'),
(312, 46, 'Analogy'),
(313, 46, 'Non-Verbal Series'),
(314, 46, 'Syllogism'),
(315, 46, 'Arithmetical Reasoning'),
(316, 46, 'Number-Ranking-Time Sequence'),
(317, 46, 'Calendar and Clock Test'),
(318, 46, 'Puzzle Test'),
(319, 46, 'Mathematical Operations'),
(320, 46, 'Alphabet Test'),
(321, 46, 'Coding-Decoding'),
(322, 46, 'Series Completion'),
(323, 47, 'Everyday Life, Culture and Politics'),
(324, 47, 'Livelihoods Economies and Societies'),
(325, 47, 'Nationalism in India'),
(326, 47, 'The Nationalist Movement in Indo-China'),
(327, 47, 'The Rise of Nationalism in Europe'),
(328, 48, 'Challenges and Outcomes of Democracy'),
(329, 48, 'Political Parties'),
(330, 48, 'Popular Struggles and Movements'),
(331, 48, 'Democracy and Diversity'),
(332, 48, 'Power Sharing'),
(333, 49, 'Lifelines of national economy'),
(334, 49, 'Manufacturing Industries'),
(335, 49, 'Mineral and Energy Resources'),
(336, 49, 'Agriculture'),
(337, 49, 'Water Resources'),
(338, 49, 'Forest and Wildlife Resource'),
(339, 49, 'Resources and Development'),
(340, 51, 'Consumer Awareness'),
(341, 51, 'Globalisation'),
(342, 51, 'Money and Credit'),
(343, 51, 'Sectors of the Indian Economy'),
(344, 51, 'Development'),
(345, 50, 'Writing'),
(346, 50, 'Vocabulary'),
(347, 50, 'Transformation of Sentences'),
(348, 50, 'Sentences'),
(349, 50, 'Tenses'),
(350, 50, 'Conjunction'),
(351, 50, 'Prepositions'),
(352, 50, 'Verb'),
(353, 50, 'Pronoun'),
(354, 50, 'Articles'),
(355, 50, 'Reading Comprehension'),
(356, 52, 'Waves'),
(357, 52, 'Oscillations'),
(358, 52, 'Kinetic Theory'),
(359, 52, 'Thermodynamics'),
(360, 52, 'Thermal Properties of Matter'),
(361, 52, 'Mechanical Properties of Fluids'),
(362, 52, 'Mechanical Properties of Solids'),
(363, 52, 'Gravitation'),
(364, 52, 'System of Particles and Rotational Dynamics'),
(365, 52, 'Work, Energy and Power'),
(366, 52, 'Laws of Motion'),
(367, 52, 'Motion in a Plane'),
(368, 52, 'Motion in a Straight Line'),
(369, 52, 'Units and Measurement'),
(370, 53, 'Environmental chemistry'),
(371, 53, 'Hydrocarbons'),
(372, 53, 'Organic chemistry - Some basic principle and techniques'),
(373, 53, 'The p-Block elements'),
(374, 53, 'The s-Block elements'),
(375, 53, 'Hydrogen'),
(376, 53, 'Redox reactions'),
(377, 53, 'Equilibrium'),
(378, 53, 'Thermodynamics'),
(379, 53, 'States of matter'),
(380, 53, 'Chemical bonding and molecular structure'),
(381, 53, 'Classification of elements and periodicity in properties'),
(382, 53, 'Structure of atom'),
(383, 53, 'Some basic concepts of chemistry'),
(384, 54, 'Probability'),
(385, 54, 'Statistics'),
(386, 54, 'Mathematical Reasoning'),
(387, 54, 'Limits and Derivatives'),
(388, 54, 'Introduction to 3D Geometry'),
(389, 54, 'Conic Sections'),
(390, 54, 'Straight Lines'),
(391, 54, 'Sequences and Series'),
(392, 54, 'Binomial Theorem'),
(393, 54, 'Permutations and Combinations'),
(394, 54, 'Linear Inequalities'),
(395, 54, 'Complex Numbers and Quadratic Equations'),
(396, 54, 'Principle of Mathematical Induction'),
(397, 54, 'Trigonometric Functions'),
(398, 54, 'Relations and Functions'),
(399, 54, 'Sets'),
(400, 55, 'Communication Systems'),
(401, 55, 'Semiconductor Electronics: Materials, Devices and Simple Circuits'),
(402, 55, 'Nuclei'),
(403, 55, 'Atoms'),
(404, 55, 'Dual Nature of Radiation and Matter'),
(405, 55, 'Wave Optics'),
(406, 55, 'Ray Optics and Optical Instruments'),
(407, 55, 'Electromagnetic Waves'),
(408, 55, 'Alternating Current'),
(409, 55, 'Electromagnetic Induction'),
(410, 55, 'Magnetism and Matter'),
(411, 55, 'Moving Charges and Magnetism'),
(412, 55, 'Current Electricity'),
(413, 55, 'Electrostatic Potential and Capacitance'),
(414, 55, 'Electric Charges and Fields'),
(415, 57, 'Probability'),
(416, 57, 'Linear Programming'),
(417, 57, 'Three Dimensional Geometry'),
(418, 57, 'Vector Algebra'),
(419, 57, 'Differential Equations'),
(420, 57, 'Application of Integrals'),
(421, 57, 'Integrals'),
(422, 57, 'Application of Derivatives'),
(423, 57, 'Continuity and Differentiability'),
(424, 57, 'Determinants'),
(425, 57, 'Matrices'),
(426, 57, 'Inverse Trigonometric Functions'),
(427, 57, 'Relations and Functions'),
(428, 58, 'Chemistry in everyday life'),
(429, 58, 'Polymers'),
(430, 58, 'Biomolecules'),
(431, 58, 'Amines'),
(432, 58, 'Aldehydes, ketones and carboxylic acids'),
(433, 58, 'Alcohols, phenols and ethers'),
(434, 58, 'Haloalkanes and haloarenes'),
(435, 58, 'Coordination compounds'),
(436, 58, 'The d and f - block elements'),
(437, 58, 'The p-block elements'),
(438, 58, 'General principles and processes of isolation of elements'),
(439, 58, 'Surface chemistry'),
(440, 58, 'Chemical kinetics'),
(441, 58, 'Electrochemistry'),
(442, 58, 'Solutions'),
(443, 58, 'The solid state'),
(444, 59, 'Communication Systems'),
(445, 59, 'Semiconductor Electronics: Materials, Devices and Simple Circuits'),
(446, 59, 'Nuclei'),
(447, 59, 'Atoms'),
(448, 59, 'Dual Nature of Radiation and Matter'),
(449, 59, 'Wave Optics'),
(450, 59, 'Ray Optics and Optical Instruments'),
(451, 59, 'Electromagnetic Waves'),
(452, 59, 'Alternating Current'),
(453, 59, 'Electromagnetic Induction'),
(454, 59, 'Magnetism and Matter'),
(455, 59, 'Moving Charges and Magnetism'),
(456, 59, 'Current Electricity'),
(457, 59, 'Electrostatic Potential and Capacitance'),
(458, 59, 'Electric Charges and Fields'),
(459, 58, 'Chemistry in everyday life'),
(460, 58, 'Polymers'),
(461, 58, 'Biomolecules'),
(462, 58, 'Amines'),
(463, 58, 'Aldehydes, ketones and carboxylic acids'),
(464, 58, 'Alcohols, phenols and ethers'),
(465, 58, 'Haloalkanes and haloarenes'),
(466, 58, 'Coordination compounds'),
(467, 58, 'The d and f - block elements'),
(468, 58, 'The p-block elements'),
(469, 58, 'General principles and processes of isolation of elements'),
(470, 58, 'Surface chemistry'),
(471, 58, 'Chemical kinetics'),
(472, 58, 'Electrochemistry'),
(473, 58, 'Solutions'),
(474, 58, 'The solid state'),
(475, 61, 'Probability'),
(476, 61, 'Linear Programming'),
(477, 61, 'Three Dimensional Geometry'),
(478, 61, 'Vector Algebra'),
(479, 61, 'Differential Equations'),
(480, 61, 'Application of Integrals'),
(481, 61, 'Integrals'),
(482, 61, 'Application of Derivatives'),
(483, 61, 'Continuity and Differentiability'),
(484, 61, 'Determinants'),
(485, 61, 'Matrices'),
(486, 61, 'Inverse Trigonometric Functions'),
(487, 61, 'Relations and Functions'),
(488, 59, 'Communication Systems'),
(489, 59, 'Semiconductor Electronics: Materials, Devices and Simple Circuits'),
(490, 59, 'Nuclei'),
(491, 59, 'Atoms'),
(492, 59, 'Dual Nature of Radiation and Matter'),
(493, 59, 'Wave Optics'),
(494, 59, 'Ray Optics and Optical Instruments'),
(495, 59, 'Electromagnetic Waves'),
(496, 59, 'Alternating Current'),
(497, 59, 'Electromagnetic Induction'),
(498, 59, 'Magnetism and Matter'),
(499, 59, 'Moving Charges and Magnetism'),
(500, 59, 'Current Electricity'),
(501, 59, 'Electrostatic Potential and Capacitance'),
(502, 59, 'Electric Charges and Fields'),
(503, 58, 'Chemistry in everyday life'),
(504, 58, 'Polymers'),
(505, 58, 'Biomolecules'),
(506, 58, 'Amines'),
(507, 58, 'Aldehydes, ketones and carboxylic acids'),
(508, 58, 'Alcohols, phenols and ethers'),
(509, 58, 'Haloalkanes and haloarenes'),
(510, 58, 'Coordination compounds'),
(511, 58, 'The d and f - block elements'),
(512, 58, 'The p-block elements'),
(513, 58, 'General principles and processes of isolation of elements'),
(514, 58, 'Surface chemistry'),
(515, 58, 'Chemical kinetics'),
(516, 58, 'Electrochemistry'),
(517, 58, 'Solutions'),
(518, 58, 'The solid state'),
(519, 60, 'Chemistry in everyday life'),
(520, 60, 'Polymers'),
(521, 60, 'Biomolecules'),
(522, 60, 'Amines'),
(523, 60, 'Aldehydes, ketones and carboxylic acids'),
(524, 60, 'Alcohols, phenols and ethers'),
(525, 60, 'Haloalkanes and haloarenes'),
(526, 60, 'Coordination compounds'),
(527, 60, 'The d and f - block elements'),
(528, 60, 'The p-block elements'),
(529, 60, 'General principles and processes of isolation of elements'),
(530, 60, 'Surface chemistry'),
(531, 60, 'Chemical kinetics'),
(532, 60, 'Electrochemistry'),
(533, 60, 'Solutions'),
(534, 60, 'The solid state');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cls_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`opt_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`tps_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `cls_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `opt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `tps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
