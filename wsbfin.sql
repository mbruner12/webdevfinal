-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2016 at 09:07 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliations`
--

CREATE TABLE `affiliations` (
  `aff_id` int(10) UNSIGNED NOT NULL,
  `ppl_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliations`
--

INSERT INTO `affiliations` (`aff_id`, `ppl_id`, `org_id`) VALUES
(1, 3, 1),
(2, 8, 1),
(4, 5, 2),
(7, 1, 3),
(8, 3, 3),
(12, 1, 4),
(13, 1, 5),
(14, 2, 5),
(16, 6, 6),
(17, 1, 7),
(19, 1, 8),
(22, 3, 9),
(23, 1, 6),
(24, 2, 6),
(27, 3, 6),
(28, 4, 6),
(29, 9, 6),
(31, 4, 1),
(32, 2, 3),
(33, 10, 2),
(34, 10, 9),
(35, 4, 2),
(36, 5, 1),
(37, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `camp_id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(600) NOT NULL,
  `camp_name` varchar(100) NOT NULL,
  `date` year(4) NOT NULL,
  `goal` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`camp_id`, `photo`, `camp_name`, `date`, `goal`) VALUES
(1, '<img src=https://www.bu.edu/prc/MPP/archive/images/WithersErnestclose.jpg>', 'Don''t Buy Gas Where You Can''t Use the Restrooms!', 1951, 'Demanded use of facilities, even if separate, by Black patrons'),
(3, '<img src=http://a57.foxnews.com/global.fncstatic.com/static/managed/img/fn2/feeds/Associated%20Press/2013/05/27/0/0/d5ea3b66c1e21111330f6a7067007def.jpg>', 'Voter Reg Campaign', 1960, 'A large effort by civil rights groups such as the Congress on Racial Equality (CORE) and SNCC'),
(4, '<img src=http://onevotesncc.org/wp-content/themes/opov/images/front.jpg>', 'Pike County Non- Violent Movement', 1961, 'Bob Moses'' voter registration efforts in Mccomb county created an opportunity for SNCC to organize'),
(5, '<img src=http://www.shankerinstitute.org/sites/shanker/files/freedom-school.jpg>', 'Mississippi Freedom Schools', 1964, 'The Mississippi Freedom Schools were developed as part of the 1964 Freedom Summer civil rights proje'),
(6, '<img src=http://www.crmvet.org/crmpics/lyon/vote1.jpg>', 'Natchez Model Movement ', 1965, 'In 1965, the insurgent model of Nachez became the bases for social change throughout the state. It u'),
(7, '<img src=http://news.usm.edu/sites/default/files/Herbert%20Randall%20photo.jpg>', 'Freedom Summer', 1964, 'Freedom Summer was a 1964 voter registration which resulted in the foundation of COFO, the MFDP and the passage of the Voter Rights Act. The project set up dozens of Freedom Schools, Freedom Houses, and community centers in small towns throughout Mississippi.'),
(8, '<img src=http://3.bp.blogspot.com/-t3o01YxuG6I/UnJZm9kjyBI/AAAAAAAABqQ/enfJurKKurI/s1600/freedom+vote.jpg>', 'The Freedom Ballot', 1963, 'In 1963, SNCC  coordinated a “Freedom Ballot” to demonstrate that Black people in the Delta wanted to vote through. The campaign was systematically planned, door to door, visiting people and asking them to register for the Freedom Ballot. People would register and then vote at one of the local Black churches.] While it wasn’t a “legal ballot”, it demonstrated 73,000 people would vote if given the opportunity.');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_ppl`
--

CREATE TABLE `campaign_ppl` (
  `cp_id` int(10) UNSIGNED NOT NULL,
  `ppl_id` int(11) NOT NULL,
  `camp_id` int(11) NOT NULL,
  `role` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_ppl`
--

INSERT INTO `campaign_ppl` (`cp_id`, `ppl_id`, `camp_id`, `role`) VALUES
(1, 4, 1, ''),
(4, 5, 1, ''),
(5, 8, 1, ''),
(6, 2, 3, ''),
(7, 2, 4, ''),
(8, 2, 5, ''),
(9, 2, 6, ''),
(10, 3, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `camp_loc`
--

CREATE TABLE `camp_loc` (
  `cl_id` int(10) UNSIGNED NOT NULL,
  `camp_id` int(10) NOT NULL,
  `loc_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp_loc`
--

INSERT INTO `camp_loc` (`cl_id`, `camp_id`, `loc_id`) VALUES
(1, 3, 1),
(3, 5, 2),
(11, 3, 5),
(12, 3, 1),
(13, 3, 2),
(14, 3, 4),
(16, 5, 3),
(17, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `camp_org`
--

CREATE TABLE `camp_org` (
  `camp_org` int(10) UNSIGNED NOT NULL,
  `camp_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp_org`
--

INSERT INTO `camp_org` (`camp_org`, `camp_id`, `org_id`) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 3, 3),
(4, 3, 8),
(5, 4, 3),
(6, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_date` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_date`) VALUES
(1, 'Freedom Summer', 1964),
(2, 'March Against Fear', 1966);

-- --------------------------------------------------------

--
-- Table structure for table `events_people`
--

CREATE TABLE `events_people` (
  `ep_id` int(10) UNSIGNED NOT NULL,
  `ppl_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `role` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `loc_id` int(10) UNSIGNED NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `county` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`loc_id`, `place_name`, `county`) VALUES
(1, 'Greenwood', 'Leflore County'),
(2, 'Mccomb', 'Pike County'),
(3, 'Natchez', 'Adams County'),
(4, 'Holmes County', ''),
(5, 'Pike County', '');

-- --------------------------------------------------------

--
-- Table structure for table `loc_events`
--

CREATE TABLE `loc_events` (
  `ce_id` int(10) UNSIGNED NOT NULL,
  `loc_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loc_events`
--

INSERT INTO `loc_events` (`ce_id`, `loc_id`, `event_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `org_id` int(10) UNSIGNED NOT NULL,
  `org_name` varchar(100) NOT NULL,
  `acronym` varchar(20) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `more` varchar(1000) NOT NULL,
  `bio` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_id`, `org_name`, `acronym`, `photo`, `more`, `bio`) VALUES
(1, 'National Association for the Advancement of Colored People', 'NAACP', '<img src=http://naacpkcmo.org/wp-content/uploads/2013/06/medger.jpg>', 'http://naacpms.org/history/', 'In the early 1920s, the NAACP had trouble organizing in Mississippi due to Klan terror and membership fee requirements. However, the internal social development of  local Black communities resulted in d institutions, organizations, and resources in which were significant factors supporting the reemergence of the NAACP in the late 1940s - early 1950s. During the fifties, the NAACP provided a home for a variety of local activists and helped to create a kind of cooptable network composed of like-minded individuals predisposed by virtue of their background to being receptive to the ideas of a new movement.'),
(2, 'Regional Council for Negro Leadership ', 'RCNL', '<img src=https://upload.wikimedia.org/wikipedia/commons/4/42/Aaron_Henry_1964.jpg>', 'http://onevotesncc.org/profile/rcnl/', 'The RCNL aimed to harness the talents of traditional Black leadership of Mississippi professionals, business leaders, and ministers with the objective of gaining voting rights, expanded opportunity, and improved education. Securing human dignity for Black people in the violently white supremacist society of Mississippi at the time underlay everything the RCNL did.\r\n\r\nDuring the first half of the 1950s it created a network of activists who a decade later, would prove vitally important to the work of organizers in the 1960s. '),
(3, 'Student Nonviolent Coordinating Committee', 'SNCC', '<img src=http://zinnedproject.org/wp-content/uploads/2014/08/Aug6MFDP.jpg>', 'http://onevotesncc.org/', 'Mississippi was not represented in the gathering of southern Black college students who came together to form SNCC in April of 1960. Ella Baker first suggested SNCC attempt to organize in Mississippi and provided Bob Moses with a list of contacts who could guide Moses through the state, provide him board, and help Moses organize.  SNCC''s origins were rooted in strategy, methods, and philosophy of nonviolence. When their organizers ignited voter registration campaigns, they encountered many local leaders who used guns as a means of survival in political and everyday life.  SNCC''s field secretaries worked with local activists to generate new community organizations demand the right to vote and shape the conversation about race and civil rights throughout the 1960s.\r\n\r\n\r\n'),
(4, 'Mississippi Deacons for Defense and Justice', 'Deacons', '<img src=http://i268.photobucket.com/albums/jj38/blackkos/deaconsfilm.jpg>', 'https://en.wikipedia.org/wiki/Deacons_for_Defense_and_Justice', 'The Deacons of Self-Defense were a paramilitary group which developed in response to White supremacist violence and the Ku Klux Klan. Deacons first formed in Natchez, MI due to a perception among local Movement activists and supporters that they could not rely on the police for protection. Most members were also affiliated with the NAACP. The Deacons are most often discussed as providing "protection" for civil rights organizers and organizations in the 1960s South.'),
(5, 'Council of Federated Organizations', 'COFO', '<img src=http://www.crmvet.org/crmpics/cofo.jpg>', 'http://onevotesncc.org/profile/cofo/', 'The names of national organizations – SNCC, CORE, SCLC, even the NAACP were less well-known in Mississippi than the Council of Federated Organization or COFO. First formed in 1961 to support jailed Freedom Riders, in 1962, it reorganized as an umbrella organization staffed by the national civil rights organizations. As a coalition, COFO was designed to be a coordinating body meant to avoid inter-organizational political wrangling and to facilitate the flow of funds into Mississippi for voter education and registration, particularly from the Voter Education Project (VEP). Equally as important, the COFO umbrella was also meant to protect and nurture grassroots activism in the state. '),
(6, 'Mississippi Freedom Democratic Party', 'MFDP', '<img src=http://images.wisconsinhistory.org/700012100001/1210000019-l.jpg>', 'http://onevotesncc.org/profile/mfdp/', 'In April 1964, the Mississippi Freedom Democratic Party (MFDP) was founded. Open to all without regard to race; it was a parallel political party designed to encourage Black political participation while challenging the validity of a largely-white Democratic Party.\r\n'),
(7, 'Provisional Government of the Republic of New Africa', 'PGRNA', '<img src=http://40.media.tumblr.com/136e59c609e5f78918db3ecd03cc5ee4/tumblr_mn1yruSi5X1s9zzmvo1_1280.jpg>', 'http://www.pg-rna.org/', 'PGRNA formed in March of 1968 at a conference organized by the Malcolm X Society. Conference-goers  resolved to form a provisional government in the U.S for Blacks, who were viewed as a subjugated nation.  In the late 1960s, the PGRNA identified the black-majority counties in western Mississippi or “Kush district” as the location to build a sovereign black nation. There was local support for the PGRNA''s efforts to purchase land, however,  these plans were interrupted after a  violent raid on the PGRNA headquarters in Jackson in 1971.'),
(8, 'Congress on Racial Equality', 'CORE', '<img src=https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Congress_of_Racial_Equality_and_members_of_the_All_Souls_Church%2C_Unitarian_march_in_memory_of_the_16th_Street_Baptist_Church_bombing_victims.jpg/1280px-Congress_of_Racial_Equality_and_members_of_the_All_Souls_Church%2C_Unitarian_march_in_memory_of_the_16th_Street_Baptist_Church_bombing_victims.jpg>', 'http://onevotesncc.org/profile/core/', 'In Mississippi, especially, but throughout the South, the Congress of Racial Equality (CORE) and SNCC worked closely together. CORE began in Chicago in 1942 when James Farmer, who would become its first national director, proposed the creation of an organization that would use “Gandhi-like techniques of nonviolent resistance – including civil disobedience, non-cooperation, and the whole bit – in the battle against segregation.”\r\n\r\nUntil the 1960s, it was largely northern, mostly white and led by grownups. The outbreak of sit-ins in 1960, however, began to move CORE southward and saw the emergence of young people into the ranks of its leadership. Projects began in various southern states, most notably Louisiana. In 1961, CORE began the Freedom Rides through the South to test federally-ordered desegregation of buses and bus stations. The Freedom Rides offered many young activists, including those in SNCC, their first experience in organized activism in the South, as well as helped CORE expand its southern presence, especially in Mississippi.'),
(9, 'Knights & Daughters of Tabor\r\n', ' Knights of Tabor', '<img src=https://partofthesolutionvanguard.files.wordpress.com/2013/01/fancy_thumb2_thumb.png?w=407&h=428>', 'https://partofthesolutionvanguard.wordpress.com/2013/01/28/secret-societies-social-justice-knights-of-tabor/', 'The Knights and Daughters of Tabor is a Black mutual aid and secret society founded in the late 1800s. In the 1940s, the Knights of Tabor established a charitable hospital in the all-black city of Mound Bayou, Mississippi. The staff was comprised entirely of Black staff including surgeon Theodore Roosevelt Howard. T.R. Howard was a force in the Mississippi Civil Rights movement acting as a founding member of RCNL, the United Order of Friendship, and a mentor to Medgar Evers.');

-- --------------------------------------------------------

--
-- Table structure for table `org_types`
--

CREATE TABLE `org_types` (
  `orgtype_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `activities` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ppl`
--

CREATE TABLE `ppl` (
  `ppl_id` int(10) UNSIGNED NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `bio` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppl`
--

INSERT INTO `ppl` (`ppl_id`, `last_name`, `first_name`, `photo`, `bio`) VALUES
(1, 'Carmichael', 'Stokely', '<img src=https://abagond.files.wordpress.com/2012/12/tumblr_lzavg63kat1qzcvk0o1_500.png>', ''),
(2, 'Moses', 'Robert Parris', '<img src=http://www.learntoquestion.com/seevak/groups/2001/sites/moses/archives/nicebmosespic.jpg>', ''),
(3, 'Baker', 'Ella', '<img src=http://images.huffingtonpost.com/2015-06-27-1435385458-7321282-EllaBakeratMFDP.jpg>', ''),
(4, 'Moore ', 'Amzie', '<img src=http://static9.comicvine.com/uploads/square_small/11/114183/5107518-amzie_moore_1963.jpg>', ''),
(5, 'Evers', 'Medger', '<img src=http://www.wheretogo411.com/site_media/photos/gallery/3107c005-b4e3-4d58-b937-24b416a2a075.jpg>', ''),
(6, 'Turnbow', 'Hartman', '<img src=http://www.crmvet.org/crmpics/band/turnbow.jpg>', ''),
(7, 'Steptoe', 'E.W.', '<img src=http://www.crmvet.org/crmpics/band/steptoe.jpg>', ''),
(8, 'Evers', 'Charles', '<img src=http://i.dailymail.co.uk/i/pix/2016/03/05/16/31E3395600000578-0-image-a-4_1457194640672.jpg>', ''),
(9, 'Hamer', 'Fannie Lou', '<img src=http://66.media.tumblr.com/7c46eb05270a5fa400ee5befe2666819/tumblr_nphivmfZtJ1u7na33o3_1280.jpg>', ''),
(10, 'Howard', 'T.R.M', '<img src=https://upload.wikimedia.org/wikipedia/en/0/09/T._R._M._Howard.jpg>', '');

-- --------------------------------------------------------

--
-- Table structure for table `ppl_loc`
--

CREATE TABLE `ppl_loc` (
  `pl_id` int(10) UNSIGNED NOT NULL,
  `ppl_id` int(11) NOT NULL,
  `loc_id` int(11) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type`) VALUES
(1, 'independent Black political organization'),
(2, 'paramilitary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliations`
--
ALTER TABLE `affiliations`
  ADD PRIMARY KEY (`aff_id`),
  ADD KEY `ppl_id` (`ppl_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`camp_id`),
  ADD KEY `camp_id` (`camp_id`,`photo`,`camp_name`,`date`,`goal`);

--
-- Indexes for table `campaign_ppl`
--
ALTER TABLE `campaign_ppl`
  ADD PRIMARY KEY (`cp_id`),
  ADD KEY `ppl_id` (`ppl_id`),
  ADD KEY `camp_id` (`camp_id`);

--
-- Indexes for table `camp_loc`
--
ALTER TABLE `camp_loc`
  ADD PRIMARY KEY (`cl_id`),
  ADD KEY `count_id` (`camp_id`);

--
-- Indexes for table `camp_org`
--
ALTER TABLE `camp_org`
  ADD PRIMARY KEY (`camp_org`),
  ADD KEY `camp_id` (`camp_id`),
  ADD KEY `camp_id_2` (`camp_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `events_people`
--
ALTER TABLE `events_people`
  ADD PRIMARY KEY (`ep_id`),
  ADD KEY `ppl_id` (`ppl_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`loc_id`),
  ADD KEY `countystate_id` (`county`(767));

--
-- Indexes for table `loc_events`
--
ALTER TABLE `loc_events`
  ADD PRIMARY KEY (`ce_id`),
  ADD KEY `camp_id` (`loc_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`org_id`),
  ADD KEY `org_name` (`org_name`);

--
-- Indexes for table `org_types`
--
ALTER TABLE `org_types`
  ADD PRIMARY KEY (`orgtype_id`),
  ADD KEY `type_id` (`type_id`,`org_id`);

--
-- Indexes for table `ppl`
--
ALTER TABLE `ppl`
  ADD PRIMARY KEY (`ppl_id`),
  ADD KEY `ppl_id` (`ppl_id`,`last_name`,`first_name`,`photo`,`bio`(767));

--
-- Indexes for table `ppl_loc`
--
ALTER TABLE `ppl_loc`
  ADD PRIMARY KEY (`pl_id`),
  ADD KEY `event_id` (`ppl_id`,`loc_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliations`
--
ALTER TABLE `affiliations`
  MODIFY `aff_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `camp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `campaign_ppl`
--
ALTER TABLE `campaign_ppl`
  MODIFY `cp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `camp_loc`
--
ALTER TABLE `camp_loc`
  MODIFY `cl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `camp_org`
--
ALTER TABLE `camp_org`
  MODIFY `camp_org` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `events_people`
--
ALTER TABLE `events_people`
  MODIFY `ep_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `loc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `loc_events`
--
ALTER TABLE `loc_events`
  MODIFY `ce_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `org_types`
--
ALTER TABLE `org_types`
  MODIFY `orgtype_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ppl`
--
ALTER TABLE `ppl`
  MODIFY `ppl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ppl_loc`
--
ALTER TABLE `ppl_loc`
  MODIFY `pl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
