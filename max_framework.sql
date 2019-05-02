--
-- Database: `max_framework`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `progectId` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subTitle` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `progectId`, `title`, `subTitle`, `image`, `status`, `createdDate`) VALUES
(1, 1, 'App Architecture', 'The overall build and structure of the app', 'appArchitecture.svg', 3, '2019-04-30 14:01:11'),
(2, 1, 'User Interaction', 'The interactive elements that provide feedback and give results', 'userInteraction.svg', 3, '2019-05-02 04:42:22'),
(3, 1, 'App Capabilities', 'The immersive and engaging aspects', 'appCapabilitues.svg', 3, '2019-04-30 10:17:57'),
(4, 1, 'Visual Design', 'The adaptable interface elements & layouts', 'visualDesign.svg', 3, '2019-04-30 14:04:06'),
(5, 1, 'Icons & Images', 'The graphic and communicative representations', 'iconsImages.svg', 1, '2019-04-30 04:56:40'),
(6, 1, 'Usability', 'The ease of use factor', 'usability.svg', 1, '2019-04-30 04:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `projectId` int(11) NOT NULL,
  `proName` varchar(100) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projectId`, `proName`, `createdDate`) VALUES
(1, 'Max Framework', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `questionId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `question` text NOT NULL,
  `rating` int(11) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`questionId`, `categoryId`, `question`, `rating`, `createdDate`) VALUES
(1, 1, 'The app offers accessibility features for people with visionloss, hearing loss and other disabilities', 0, '2019-04-24 09:46:02'),
(2, 1, 'There is sufficient color contrast between images and text.Customized loading screen is present on launch', 0, '2019-04-24 09:46:39'),
(3, 1, 'Activity spinner is present while content is loading', 0, '2019-04-24 09:46:57'),
(4, 1, 'Alerts are only for actionable information', 0, '2019-04-24 09:47:23'),
(5, 1, 'Consistent transition style for modal views', 0, '2019-04-24 09:48:13'),
(6, 1, 'Navigation feels logical, predictable and easy to follow', 0, '2019-04-24 09:48:27'),
(7, 1, 'User is aware of his current position and how to get to the destination', 0, '2019-04-24 09:48:42'),
(8, 1, 'Information can be accessed through minimum number of taps', 0, '2019-04-24 09:49:00'),
(9, 1, 'Familiar navigation components like page controls, tab bars, segmented controls are used', 0, '2019-04-24 09:49:15'),
(10, 1, 'The navigation bar shows the current position in the hierarchy of data', 0, '2019-04-24 09:49:32'),
(11, 1, 'Launch screen appears the moment the app starts showing progress', 0, '2019-04-24 09:49:48'),
(12, 1, 'App supports both portrait and landscape modes', 0, '2019-04-24 09:51:46'),
(13, 1, 'Request permission to access personal information, location, calendar, contacts, photos, files and folders if needed when the app starts', 0, '2019-04-24 09:52:26'),
(14, 1, 'Settings option is available to configure choices', 0, '2019-04-24 09:52:48'),
(15, 1, 'files and folders if needed when the app starts', 0, '2019-04-24 09:53:13'),
(16, 2, 'Additional interactive menus displayed through 3D touch', 0, '2019-04-25 18:30:00'),
(17, 2, 'Adjust volume levels when necessary', 0, '2019-04-25 18:30:00'),
(18, 2, 'Quick and easy sign-in process', 0, '2019-04-25 18:30:00'),
(19, 2, 'Provides password autofill feature', 0, '2019-04-25 18:30:00'),
(20, 2, 'Supports biometric authentication whenever possible', 0, '2019-04-25 18:30:00'),
(21, 2, 'Gathers information directly from system while filling forms', 0, '2019-04-25 18:30:00'),
(22, 2, 'Prefill fields by providing good defaults', 0, '2019-04-25 18:30:00'),
(23, 2, 'Validate fields immediately', 0, '2019-04-25 18:30:00'),
(24, 2, 'Hint text placed in text fields to help communicate purpose', 0, '2019-04-25 18:30:00'),
(25, 2, 'Provides feedback about what the app is doing', 0, '2019-04-25 18:30:00'),
(26, 2, 'Displays alerts on results of action', 0, '2019-04-25 18:30:00'),
(27, 3, 'The app use gestures to perform certain tasks (Shake to undo redo or Touch and hold)', 0, '2019-04-25 18:30:00'),
(28, 3, 'Delivers engaging experiences by blending virtual objects with the real world', 0, '2019-04-25 18:30:00'),
(29, 3, 'The app coexists with other apps through multitasking by sliding over or split views', 0, '2019-04-25 18:30:00'),
(30, 3, 'In case of interruptions, the app saves current data and resumes seamlessly on return', 0, '2019-04-25 18:30:00'),
(31, 3, 'App notifications provide important information anytime, even when app is locked', 0, '2019-04-25 18:30:00'),
(32, 3, 'Banners and alerts are displayed on top of the screen', 0, '2019-04-25 18:30:00'),
(33, 3, 'The app makes calendar markings for events', 0, '2019-04-25 18:30:00'),
(34, 3, 'Displays in-app prompt that asks for a rating and an optional written review', 0, '2019-04-25 18:30:00'),
(35, 3, 'App supports on various devices', 0, '2019-04-25 18:30:00'),
(36, 3, 'Online help is provided and is suitable for the user base', 0, '2019-04-25 18:30:00'),
(37, 4, 'Screen can be used in landscape or portrait orientation', 0, '2019-04-25 18:30:00'),
(38, 4, 'Screen text is placed within the safe area and layout margins', 0, '2019-04-25 18:30:00'),
(39, 4, 'Buttons and navigation bars are within the safe area', 0, '2019-04-25 18:30:00'),
(40, 4, 'Primary content is clear at its default size', 0, '2019-04-25 18:30:00'),
(41, 4, 'Elements with similar function look similar', 0, '2019-04-25 18:30:00'),
(42, 4, 'Tappable area have ample touch targets', 0, '2019-04-25 18:30:00'),
(43, 4, 'Textual elements provide comfortable reading experience', 0, '2019-04-25 18:30:00'),
(44, 4, 'Screen transitions are smooth and fluid', 0, '2019-04-25 18:30:00'),
(45, 4, 'Branding is consistent throughout the app', 0, '2019-04-25 18:30:00'),
(46, 4, 'Colors used are inline with the app icon', 0, '2019-04-25 18:30:00'),
(47, 4, 'Easy to navigate and focuses on content', 0, '2019-04-25 18:30:00'),
(48, 4, 'Usage of logo in the right places', 0, '2019-04-25 18:30:00'),
(49, 4, 'The color palette communicates the brand', 0, '2019-04-25 18:30:00'),
(50, 4, 'Words and phrases are understandable and familiar', 0, '2019-04-25 18:30:00'),
(51, 4, 'Links are clear, descriptive and well labelled.', 0, '2019-04-25 18:30:00'),
(52, 4, 'Users can easily get back to the homepage or a relevant start point.', 0, '2019-04-25 18:30:00'),
(53, 5, 'Images are of high resolution and supported across all screen sizes', 0, '2019-04-25 18:30:00'),
(54, 5, 'Alternative text labels are provided to support voice-over for people with visual impairments', 0, '2019-04-25 18:30:00'),
(55, 5, 'App icon is simple and communicates the brand', 0, '2019-04-25 18:30:00'),
(56, 5, 'Icons used in the app are simple and recognizable', 0, '2019-04-25 18:30:00'),
(57, 5, 'Launch screen appears when the app starts', 0, '2019-04-25 18:30:00'),
(58, 5, 'The app homescreen loads quickly', 0, '2019-04-25 18:30:00'),
(59, 5, 'Navigation bars have appropriate titles', 0, '2019-04-25 18:30:00'),
(60, 5, 'Standard back button is present', 0, '2019-04-25 18:30:00'),
(61, 5, 'Segmented controls for buttons are consistent throughout the app', 0, '2019-04-25 18:30:00'),
(62, 5, 'Label buttons appropriately', 0, '2019-04-25 18:30:00'),
(63, 6, 'Chatbot available for quick queries', 0, '2019-04-25 18:30:00'),
(64, 6, 'Hint text present on text field to communicate the purpose', 0, '2019-04-25 18:30:00'),
(65, 6, 'Hint text present on search bars', 0, '2019-04-25 18:30:00'),
(66, 6, 'Clear button available on the right end of text field when appropriate', 0, '2019-04-25 18:30:00'),
(67, 6, 'Use alerts to display important information', 0, '2019-04-25 18:30:00'),
(68, 6, 'Search option lists recently viewed option', 0, '2019-04-25 18:30:00'),
(69, 6, 'Search option lists favorites', 0, '2019-04-25 18:30:00'),
(70, 6, 'Tiles on homescreen can be customized based on preferences', 0, '2019-04-25 18:30:00'),
(71, 6, 'Tiles scroll horizontally to display hidden information', 0, '2019-04-25 18:30:00'),
(72, 6, 'Labels display short static text', 0, '2019-04-25 18:30:00'),
(73, 6, 'Calendar views show the entire month', 0, '2019-04-25 18:30:00'),
(74, 6, 'Flight prices are displayed in calendar view', 0, '2019-04-25 18:30:00'),
(75, 6, 'Activity indicators or progress bars are displayed when the app is in progress', 0, '2019-04-25 18:30:00'),
(76, 6, 'Progress bars are customized to match the apps appearance', 0, '2019-04-25 18:30:00'),
(77, 6, 'Content updates happen automatically', 0, '2019-04-25 18:30:00'),
(78, 6, 'Segmented controls are wider and easy to select', 0, '2019-04-25 18:30:00'),
(79, 6, 'Quick action button available on homescreen', 0, '2019-04-25 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `reportId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`reportId`, `UserId`, `projectId`, `categoryId`, `createdDate`) VALUES
(9, 1, 1, 3, '2019-04-30 10:17:57'),
(14, 1, 1, 1, '2019-04-30 14:01:11'),
(15, 1, 1, 4, '2019-04-30 14:04:06'),
(19, 1, 1, 2, '2019-05-02 04:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `report_sub`
--

CREATE TABLE `report_sub` (
  `reportSubId` int(11) NOT NULL,
  `reportId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_sub`
--

INSERT INTO `report_sub` (`reportSubId`, `reportId`, `questionId`, `rating`) VALUES
(117, 9, 27, 3),
(118, 9, 28, 3),
(119, 9, 29, 3),
(120, 9, 30, 3),
(121, 9, 31, 3),
(122, 9, 32, 3),
(123, 9, 33, 3),
(124, 9, 34, 3),
(125, 9, 35, 1),
(126, 9, 36, 1),
(184, 14, 1, 1),
(185, 14, 2, 1),
(186, 14, 3, 1),
(187, 14, 4, 1),
(188, 14, 5, 3),
(189, 14, 6, 3),
(190, 14, 7, 3),
(191, 14, 8, 3),
(192, 14, 9, 3),
(193, 14, 10, 3),
(194, 14, 11, 3),
(195, 14, 12, 3),
(196, 14, 13, 3),
(197, 14, 14, 3),
(198, 14, 15, 3),
(199, 15, 37, 1),
(200, 15, 38, 0),
(201, 15, 39, 0),
(202, 15, 40, 3),
(203, 15, 41, 1),
(204, 15, 42, 0),
(205, 15, 43, 0),
(206, 15, 44, 3),
(207, 15, 45, 1),
(208, 15, 46, 0),
(209, 15, 47, 0),
(210, 15, 48, 3),
(211, 15, 49, 1),
(212, 15, 50, 0),
(213, 15, 51, 0),
(214, 15, 52, 3),
(248, 19, 16, 1),
(249, 19, 17, 1),
(250, 19, 18, 1),
(251, 19, 19, 1),
(252, 19, 20, 2),
(253, 19, 21, 2),
(254, 19, 22, 2),
(255, 19, 23, 2),
(256, 19, 24, 3),
(257, 19, 25, 3),
(258, 19, 26, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectId`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`questionId`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD UNIQUE KEY `reportId` (`reportId`);

--
-- Indexes for table `report_sub`
--
ALTER TABLE `report_sub`
  ADD UNIQUE KEY `reportSubId` (`reportSubId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `projectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `questionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `reportId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `report_sub`
--
ALTER TABLE `report_sub`
  MODIFY `reportSubId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
