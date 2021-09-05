-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2021 at 02:52 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reviewhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int NOT NULL,
  `comment_post_id` int NOT NULL,
  `comment_author` varchar(50) NOT NULL,
  `comment_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `post`) VALUES
(34, 'Sci-Fi', 4),
(31, 'Fantasy', 1),
(32, 'Thriller', 4),
(33, 'Action', 1),
(35, 'Romantic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `genre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int NOT NULL,
  `post_img` varchar(100) NOT NULL,
  `rating_count` int NOT NULL DEFAULT '0',
  `rating_by` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `genre`, `post_date`, `author`, `post_img`, `rating_count`, `rating_by`) VALUES
(36, 'Batman Begins(2005)', 'Batman Begins was one of the best superhero movies I\'ve had the pleasure of watching with the exceptional plot and phenomenal action sequences.\r\n\r\nHonestly it had it all with the whole origin story, which wasn\'t just a bite or just morals and power, yes it had the whole parents death that eventually drove him to be batman but there was much more, we got glimpses of his childhood (of course with his parents death) then we see him as an adult believing that justice was vengeance, later on goes to learn about the mind of criminals by taking on a life among them, only to be saved from a prison cell by a new personality claiming to have what he\'s looking for, from there he ends up with the league of shadows that taught him to face his fears, be invisible and other skills that allowed him to to put on a mask and save his city. they even played with the prospect of fear, Plus his purpose meeting his parent\'s, lets not forget the epic car chase scene, I could keep going...\r\n\r\nI like how everything that happens in this 140 min movie(i know it quiet long but trust me its worth it) all comes around and has a purpose to serve in the over all plot.\r\nthe movie goes on with multiple villain personalities all playing part time roles in a bigger scheme made by someone we were done with in the first half of the movie(or so we thought)', '34', '17 Aug, 2021', 27, 'batman.jpg', 0, 0),
(37, 'Aquaman (2019)', 'Thank you WB for not interfering in this Movie and ruining it. James Wan what can I say, what a masterpiece you have created. The last time I felt this satisfied after watching a movie was when I watched Doctor Strange. But your vision and Cinematography for this film is incomparable the sheer brilliance in every scene has been so delightful. I got this incredible satisfaction of a mesmerised kid who watched his comic books come to life. This is the most comic booky a comic book movie could ever get.  The heroes and antagonists all come out of the comic book so accurately especially Black Manta. When you think about it, the artists were hand picked by Zack Snyder, I used to be his hater, but when I gauged his width and endless creativity you know you\'re up for something Brilliant. Jason Momoa\'s screen presence is so good, no one else could have pulled this role off any better. Amber Heard is definitely an Eye Candy and Nicole Kidman brings in the emotions that only an established actor could bring. Wan manages to bring the story to life, the story of a man not being accepted among his own people, humbled because of his small beginnings learning from the best and conquering everything. You feel the anguish, delight and the surprises with every character and the scenes, along with the brilliant visuals. The film scores an 11 on 10 for its visuals, especially during the trench scene where Wan creates this amazing Visual spectacular from his vast experience of directing horror movies. There are some irregularities and those can be dismissed as the movie in its entirety is a treat. In all Wan you could take my Money and leave me Broke, because I\'m gonna watch this movie again and will be happy cause you have created a Virtual Paradise. Aquaman is an Extravaganza.', '31', '15 Aug, 2021', 27, 'aquaman.jpg', 0, 0),
(38, 'Black Panther (2018)', 'Reviewed by Jaden Carlsen from his mother\'s account. Now, I realize that this movie disappointed some fans due to the lack of a lot of action happening throughout the film, unlike other MCU films, however, I think that what makes a great movie, regardless of genre, isn\'t necessarily the action, or how the actors look, but character, and this movie delivers. T\'Challa was a great protagonist with relate ability, and likability that stayed consistent with what we saw in Civil War, and built upon it. I liked all of the other characters, including T\'Challa\'s sister and his ex-girlfriend. Killmonger is the main villain of the film, and deserves credit for his simpathy for others of his race who\'ve suffered discrimination from Eurpeans through history up to the present. They also set up his backstory pretty well and make him a legitimately intimidating villain who is able to more than hold his own against T\'Challa in a fight. The story is also very well written and includes some commentary against choosing to be an isolated nation, as is made apparently when that choice of Wakanda\'s people came back to haunt them when Killmonger arrives there. It also, really puts America\'s history of trying to stay isolated via the Monroe Doctrine into perspective, as well as caring more about protecting yourselves as a society as opposed to helping others. The film is also beautiful to watch, and actually makes the most of the few action scenes it has. The actors do excellent in portraying their characters too, and each character arc is fleshed out pretty well in the film. The only issue I have is...I would have LOVED to have seen Kraven The Hunter in the movie! Hope he makes an appearance in the sequel. Overall, I recommend this movie to any Black Panther fan, and any Political movie person as well.', '32', '19 Aug, 2021', 27, 'blackpanther.jpg', 0, 0),
(40, 'Black Widow (2021)', 'LOVED IT!!!...and I would say this is as good as \'Captain America the winter soldier\' as it\'s in the similar tone to that movie and Black Widow brought out most of my emotions in this movie which is Excitement, laughter, and sadness. Let me just say that I\'m a huge fan of the character \'Natasha Romanoff\' including Scarlett Johansson herself along as her playing Natasha in the MCU movies too which she is so brilliant at...and no other actress would do it better than her. \'David Harbour\' as \'Alexei\' is awesome and he is like Captain America but does things completely opposite to \'Chris Evans\' version...David\'s version just makes me laugh in this movie and I just love that they made his character have a sense of humor and him doing funny stuff but also action too. \'Florence Pugh\' is awesome and I love the badass stuff she does and she gets to do awesome stuff that Scarlett\'s character does. This is kind of hard for me to say but let me first just say that as I\'m a big fan of Natasha\'s character and know so much about her in the comics I really don\'t think Natasha is done yet in the MCU...I mean yea she did die in endgame but the hope of the character\'s return lies within the comic books which makes anything possible...also Scarlett spent 10 years developing this character and ever since Iron Man 2 her fans have been asking for a black widow movie and it just make me think why didn\'t we ever get a black widow movie sooner when we have been asking for it?...that way we would of had a chance of more of her own movies in the past throughout all those years and if we had those movies in the past this new prequel black widow movie would had counted as \'Black widow 3\' or 4 just before her death...I really would had preferred it if the timeline of this new black widow movie was set much more further in the past which would of had led Natasha to get more Standalone movies in future which of course would be a black widow prequel franchise...and throughout just 5 years Iron man got 3 standalone movies including Captain America...and Thor is getting his fourth movie by next year and this year Spider-Man is getting a third movie, what I\'m trying to say is that we need more strong women like Natasha to have their own standalone movies but it\'s a shame we did not get it sooner. I think it would be a fair play if they did a black widow prequel show on Disney plus with Scarlett and that would be something new for her as she\'s always on the big screen and it doesn\'t have to be soon for her to do this at all because I just know Scarlett will look great when she reach her 40\'s...I mean look at \'Rachel Weisz\' in this movie because she was 50 in this that you would not think at all. But yea it just seems we see so much more of Natasha\'s character doing her own thing in the comics more than the MCU movies because in the MCU movies she was mostly just a side character. So yea the movie is great with amazing action scenes and the CGI is beautiful in this movie but mostly I do love that they added in some practical stuff in this which is good because that\'s what would make the movie age a bit better...and this is something I would watch over and over again as this is something that I have been waiting for 10 years LOL. ASSEMBLE YOURSELVES AND WATCH THIS MOVIE!! :)', '32', '25 Aug, 2021', 27, 'blackwidow.jpg', 0, 0),
(45, 'Avengers: Endgame (2019)', '                    Not only does this film reach our expectations as a film, it surpasses them. There are quite a few things I like about this film so this review may take a while to read.\r\n\r\nFirstly, the Russo brothers obviously show deep appreciation for the MCU and the effort they put in for this film is clearly visible with so many awesomely-handled pivotal moments in the film’s plot. It seems that many of the MCU’s best films are directed by Anthony and Joe Russo and that doesn’t surprise me one bit.\r\n\r\nCompared to many MCU films, the acting in this film is phenomenal. Everyone in the cast deeply cares for this film and you can tell that they all understand the significance of this feature. Shout out to Jeremy Renner, who portrays Clint Barton/Hawkeye who’s character really developed into something new and better in this film and I’m looking forward to seeing the character in future instalments.                ', '33', '05 Sep, 2021', 27, 'endgame.jpg', 0, 0),
(43, 'Iron Man (2008)', 'Still the greatest MCU film. Way better than that overrated Marvel\'s The Avengers, that overrated Guardians of the Galaxy, that overrated Black Panther, that overrated Avengers: Infinity War, and that massively overrated Avengers: Endgame. Iron Man is a fantastic masterpiece. Robert Downey Jr. proves to be the perfect actor to portray Iron Man/Tony Stark. Terrence Howard was way better as Jim \"Rhodey\" Rhodes than Don Cheadle. Don Cheadle sucks as War Machine/Jim \"Rhodey\" Rhodes, Terrence Howard should have been War Machine for the other MCU films instead of Don Cheadle.\r\n\r\n Gwyneth Paltrow is admittedly good as Pepper Potts. Jon Favreau is okay as Harold \"Happy\" Hogan. Leslie Bibb is great as Christine Everhart. Shaun Toub is great as Yinsen (despite the character being a Vietnamese Asian in the comics instead of an Afghan Middle Easterner). Jeff Bridges is perfect as Iron Monger/Obadiah Stane and he honestly should\'ve been Oscar-nominated for Best Supporting Actor for his amazing performance in this film.\r\n\r\n Paul Bettany is perfect as the voice of Jarvis. The cast is amazing. Jon Favreau did a fabulous job at directing this film. I am glad that Marvel gave him full creative control over this film (unlike in the sequel where Marvel was constantly badly interfering behind the scenes which ended up ruining Iron Man 2). He is a very great and talented film director, one of the best directors in Hollywood, and he honestly should\'ve been Oscar-nominated for Best Director for directing this film.\r\n\r\n The acting in this movie is great, especially from Robert Downey Jr. and Jeff Bridges. The visual effects are amazing. The action scenes are outstanding. The humor in this movie is good unlike the childish humor in the Disney Marvel era (you know, when Disney bought Marvel). The dialogue is great.\r\n\r\n The script is great. The writing is great. The directing is great. Iron Man is one of the top 10 best superhero/comic book/Marvel movies. The second greatest film of 2008 right behind The Dark Knight.\r\n\r\nIron Man is the best MCU film. Iron Man is the third greatest Marvel movie, superhero movie, and comic book movie right behind Spider-Man 2. Iron Man is on my Top 10 Best Films of All Time list and is one of my top 10 favorite movies of all time list. Honestly, Iron Man should have been Oscar-nominated for Best Picture, Best Visual Effects, and for Best Score. Too bad the Academy Awards are mostly run by biased geeks and idiots.\r\nIron Man is a fantastic masterpiece.', '34', '04 Sep, 2021', 27, 'ironman.jpg', 0, 0),
(46, 'Spider-Man: Homecoming (2017)', 'Spider-Man has always been my favorite superhero. I haven\'t read too many of his comics, but I\'m familiar with the character\'s history, his rogues gallery, and I\'ve seen many of the properties based on him over the years, like the original Spider-Man cartoon, the Sam Raimi trilogy (I still stand by Spider-Man 3 as the best of that series), and the Amazing Spider-Man movies. So when it was announced that Sony and Marvel would be working to bring Spider-Man into the MCU, I was very happy. After the Amazing Spider-Man films fizzled out, the character was long in need of fresh blood. And Spidey gets that in spades in Spider-Man: Homecoming.\r\n\r\nPicking up two months after the events of Captain America: Civil War, we follow Peter Parker (Tom Holland) as he navigates the horrors of high-school life while simultaneously working to keep his Queens neighborhood safe. He\'s trying to impress Tony Stark and become a full-time Avenger, though he\'s in a little over his head in that department. When the Vulture (Michael Keaton) threatens to safety of the streets of Queens, Peter has to work to stop him before he loses the people he cares about. Other cast members include Robert Downey Jr., Jacob Batalon, Marisa Tomei, Laura Harrier, Zendaya, Donald Glover, Jon Favreau, Jennifer Connelly, and cameos by Gwyneth Paltrow and Chris Evans.\r\n\r\nTobey Maguire will always hold a special place in my heart, and Andrew Garfield was pretty good too, but Tom Holland absolutely nails the Spider-Man character. I brought up in my Ant-Man review that Scott Lang is an everyman, and that extends to Peter Parker as well. Sure, he has genius-level intellect, but he\'s also a bright-eyed kid who sees people like the Avengers as big-time celebrities. That\'s one of the most welcome things about this movie; it offers a look at the more normal side of the MCU, and we see the viewpoints of ordinary people when it comes to all the crazy happenings in the franchise.\r\n\r\nIt also helps that we don\'t get another origin story this time around. That\'s been done twice now, so most people are already familiar with how Peter gets his powers and why he\'s driven to help people. This version of Peter has been Spider-Man for quite some time now, and he\'s trying to fix stuff and help people out. This movie also offers a fresh look at the \"friendly neighborhood\" side of Spider-Man\'s crime-fighting career. We see Spidey engaging in conversation with passersby, helping out old ladies, and perfecting his web-slinging technique. It offers a more realistic look at everyday crime-fighting than what we\'ve seen thus far in the MCU.\r\n\r\nSo Spider-Man is great, but the Vulture is no slouch either. Toomes is another unique villain in the MCU in that he\'s not interested in taking over the globe or gaining an Infinity Stone or anything like that. He\'s simply trying to stay a small-time crook and not incur the wrath of people like Iron Man. All things considered, Toomes is a fairly decent guy who\'s fallen on financial strife, and it\'s nice to have a hero-villain conflict that hits closer to home. And it doesn\'t hurt that the conflict leads to one of the biggest reveals of the movie. Plus his updated costume is way better-looking than the comics, but still honors the \"Vulture\" nature of that character.', '34', '05 Sep, 2021', 27, 'spider1.jpg', 0, 0),
(47, 'Ant-Man (2015)', 'Ant-Man is a smaller-scale movie compared to prior installments in the MCU, but it\'s by no means any less engrossing. With a strong lead performance by Paul Rudd, a more simple, leaner story, and some really impressive visual effects, Ant-Man manages to prove that Marvel doesn\'t need to have world-ending events for every single conflict.\r\n\r\nAnt-Man follows Scott Lang (Paul Rudd), a petty thief who\'s just been released from prison, as he tries to reconnect with his daughter Cassie (Abby Ryder Fortson) and ex-wife Maggie (Judy Greer). However, he ends up getting involved in a heist scheme involving Hank Pym (Michael Douglas) and his daughter Hope Van Dyne (Evangeline Lilly) to steal a super-powered suit from Darren Cross (Corey Stoll). As Scott goes up against the villain Yellowjacket, Scott has to train hard in order to become Ant-Man, a hero with the power to shrink to the size of an ant but still keep his strength. Other actors from previous MCU movies also make appearances, including Anthony Mackie as Falcon, Hayley Atwell as Peggy Carter, and John Slattery as Howard Stark.\r\n\r\nPaul Rudd is a national treasure. He\'s a funny, likable guy who manages to make you feel right at home. Apart from being the main hero, Rudd also has a writing credit for this movie, which explains why there are so many funny beats. And Scott Lang is a unique hero in that he\'s an everyman; he\'s not a soldier, he\'s not a billionaire, and he\'s not a god. He\'s a regular guy who just wants to spend time with his family and find redemption for past mistakes. And after all the continent-hopping in Age of Ultron, it\'s nice to have a conflict that hits closer to home.\r\n\r\nThe supporting cast is rounded out really well, but the person who really steals the show is Michael Pena as Luis. Luis is Scott\'s best friend and fellow crook, and like Scott, he\'s a more \"normal\" guy (as normal as you can get in the MCU, at least). From his first scene, Luis is instantly likable, and he makes for one of the MCU\'s best sidekicks. And he manages to have some of the funniest moments in the movie; once you hear one of his \"stories,\" you\'ll be begging to hear more.\r\n\r\nMichael Douglas, meanwhile, turns in a really good performance as Hank Pym, and it\'s fun to see him take on a mentorship role to Scott while clashing with his daughter Hope. Pym also manages to have some funny moments, particularly one towards the end. Lilly also serves as an entertaining foil to Rudd, and her character is fleshed out pretty well. The big theme in this movie is that of failed father figures. Hank wants redemption for shutting out his daughter after his wife\'s \"death,\" and Scott wants to redeem himself to earn his daughter\'s love.', '32', '05 Sep, 2021', 27, 'antman.jpg', 0, 0),
(48, 'Loki (2021-)', 'The first season of what has been the most astounding Marvel series so far concluded today with a startling, universe-altering revelation that ties into not just the upcoming MCU film Ant Man-Quantumania but also the next Doctor Strange installation-The Multiverse of Madness.\r\n\r\nLoki starts off with our beloved God of Mischief stranded in the ‘Time Variance Authority’ (TVA) after escaping with the Tesseract after the events of Avengers one and the Battle for New York. \r\n\r\nThere, he meets Mobius (Owen Wilson) an officer of the TVA who enlists his help to track down another Loki ‘variant’ from a different timeline, the brilliant Sylie (Sofia Di Martino).\r\n\r\nThe series is as much about Tom Hiddleston as it is about Sofia Di Martino as the two actors have sparkling chemistry on-screen which has the audience swooning for more. Owen Wilson and a surprise guest antagonist are electric in their supporting roles.\r\n\r\nThe makers pay rich homage to Marvel comics, with multiple versions of everybody’s favorite Norse God making an appearance, including a brilliant Richard E Grant as Classic Loki and a ridiculous alligator version of Loki who has taken the internet by storm and is now known by the moniker, Croki', '34', '05 Sep, 2021', 27, 'loki.jpg', 0, 0),
(49, 'The Flash (2014 - )', '\'\'The Flash\'\' Is without a doubt (in my opinion) one of the greatest TV Shows of ALL TIME[FUNWISE ATLEAST].It perfectly blends all he great aspects of A Superhero Show such as mystery,fear,comedy(sometime) & SOMETIMES Has Perfect Plot Twists.\r\nThe one thing no one can argue about are the talents of the cast, both CGI & actors.\r\nSeason 1 was AMAZING\r\nSeason 2 was AMAZING\r\nSeason 3 was AMAZING,for me not for everyone else...\r\nSeason 4 was INTERESTING,But had a lackluster ending.\r\nSeason 5 MAY be the best season of  the series so far due to the fact that it will be broken into 3 segments. (Time Travel From The Future Edit:Season 1 Remains the BEST Season,, but Season 5 was better than Season 4 & had a \'\'little thing\'\' ,without giving it away, from Season 1 that made it exciting. Also, the Ending was better than the endings of Season 3 &4,Honestly,and ofcourse, It sets up the Crisis...On Infinite Earths!) (Update #2: The Flash season 6 trailer \'\'Love Is Power\'\' genuinely seems it can top anything else the flash has EVER done! Truly hyped. Also, note to self, I made a joke comment \'\'The Flash: Love is power, Supergirl:HOPE is power, Arrow: Darkness is Power, Legends: SINGING is power & it got OVER 2.4k LIKES!) (Update #3: The Flash Season 6 Premiere is one of the most EXHILARATING & BRILLIANT PREMIERES OF ALL TIME! It to the point in a flash! (pun intended) & really puts the season into perspective & the villain looks something that has the potential to top zoom! & maybe, although i highly doubt it, even EOBARD THAWNE! Guess there\'s only one way to find out...:)\r\n\r\nThe Flash is certainly a show that I will never forget & hope continues with more than 10 Seasons.\r\nIt will always be close to my heart.\r\nIf you haven\'t guessed by the way The Flash is my favourite comic book character of all time, SO I MAY Be a little biased.', '31', '05 Sep, 2021', 27, 'flash.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'ReviewHub | Movies and Series', 'logo2.png', '© Copyright 2021 | Powered by ReviewHub');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(30, 'Sohel', 'Khan', 'sohel', '03346657feea0490a4d4f677faa0583d', 0),
(27, 'Musfiqur', 'Rahaman', 'mrdehan', '21232f297a57a5a743894a0e4a801fc3', 1),
(31, 'Karim', 'Uddin', 'karim', '71b9b5bc1094ee6eaeae8253e787d654', 0),
(32, 'Mr.', 'Hasan', 'hasan', '7ebc2c8aa51f075ccc653a0f8e86fbb4', 0),
(33, 'Rahim', 'Khan', 'rahim', '63eefbd45d89e8c91f24b609f7539942', 1),
(34, 'Rafiq', 'Uddin', 'rafiq', 'f3224d90c778d5e456b49c75f85dd668', 0),
(35, 'Shakib', 'Al Hasan', 'shakib', 'f19e1368ef58fde93d78ba396f9046e3', 0),
(36, 'Kamal', 'Hossain', 'kamal', '7faafcbcc6456af72597bc2f3a9306b4', 0),
(39, 'Abul', 'Kalam', 'kalam', 'e10adc3949ba59abbe56e057f20f883e', 0),
(40, 'Bayezid', 'Mahmud', 'bayezid', '827ccb0eea8a706c4c34a16891f84e7b', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
