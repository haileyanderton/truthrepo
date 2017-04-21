-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2017 at 06:10 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truthrepo`
--

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `quote_id` int(11) NOT NULL,
  `quote` text NOT NULL,
  `author` text NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`quote_id`, `quote`, `author`, `topic_id`) VALUES
(1, 'God pardons like a mother, who kisses the offense into everlasting forgiveness.', 'Henry Ward Beecher', 2),
(2, 'One of the most staggering truths of the Scriptures is to understand that we do not earn our way to heaven. ...works have a place--but as a demonstration of having received God''s forgiveness, not as a badge of merit of having earned it.\r\n', 'Ravi Zacharias', 2),
(3, 'The most beautiful people we have known are those who have known defeat, known suffering, known struggle, known loss, and have found their way out of the depths. These persons have an appreciation, a sensitivity, and an understanding of life that fills them with compassion, gentleness, and a deep loving concern. Beautiful people do not just happen.', 'Elisabeth Kubler-Ross', 1),
(4, 'You don''t really know Jesus is all you need until Jesus is all you have.', 'Tim Keller', 1),
(5, 'The splendor of a human heart that trusts it is loved unconditionally gives God more pleasure than Westminster Cathedral, the Sistine Chapel, Beethoven''s "Ninth Symphony", Van Gogh''s "Sunflowers", the sight of 10,000 butterflies in flight, or the scent of a million orchids in bloom. Trust is our gift back to God, and he finds it so enchanting that Jesus died for love of it.', 'Brennan Manning', 3),
(6, 'We must cease striving and trust God to provide what He thinks is best and in whatever time He chooses to make it available. But this kind of trusting doesn''t come naturally. It''s a spiritual crisis of the will in which we must choose to exercise faith.', 'Charles R. Swindoll', 3),
(7, 'Prayer is not a hard requirement – it is the natural duty of a creature to its creator, the simplest homage that human need can pay to divine liberality.', 'Charles Spurgeon', 4),
(8, 'The right way to pray is to stretch out our hands and ask of One who we know has the heart of a Father.', 'Dietrich Bonhoeffer', 4),
(9, 'In the New Testament, love is more of a verb than a noun. It has more to do with acting than with feeling. The call to love is not so much a call to a certain state of feeling as it is to a quality of action.', 'RC Sproul', 5),
(10, 'God loves each of us as if there were only one of us.', 'Augustine', 5),
(11, 'A faith without some doubts is like a human body with no antibodies in it. People who blithely go through life too busy or indifferent to ask the hard questions about why they believe as they do will find themselves defenseless against either the experience of tragedy or the probing questions of a smart skeptic. A person''s faith can collapse almost overnight if she failed over the years to listen patiently to her own doubts, which should only be discarded after long reflection.', 'Tim Keller', 6),
(12, 'Doubt is an incentive to truth, and patient inquiry leadeth the way.', 'Hosea Ballou', 6),
(13, 'I believe in Christianity as I believe that the sun has risen: not only because I see it, but because by it I see everything else.', 'C.S. Lewis', 7),
(14, 'Faithless is he that says farewell when the road darkens.', 'J.R.R. Tolkien', 7),
(17, 'So many times we say that we can''''t serve God because we aren''''t whatever is needed. We''''re not talented enough or smart enough or whatever. But if you are in covenant with Jesus Christ, He is responsible for covering your weaknesses, for being your strength. He will give you His abilities for your disabilities!', 'Kay Arthur', 8),
(18, 'Remember, it is not your weakness that will get in the way of God''s working through you, but your delusions of strength. His strength is made perfect in our weakness! Point to His strength by being willing to admit your weakness.', 'Paul David Tripp', 8),
(19, 'The person who thinks the money he makes is meant mainly to increase his comforts on earth is a fool, Jesus says. Wise people know that all their money belongs to God and should be used to show that God, and not money, is their treasure, their comfort, their joy, and their security.', 'John Piper', 9),
(20, 'Give me five minutes with a person''s checkbook, and I will tell you where their heart is.', 'Billy Graham', 9),
(21, 'Wisdom is the right use of knowledge. To know is not to be wise. Many men know a great deal, and are all the greater fools for it. There is no fool so great a fool as a knowing fool. But to know how to use knowledge is to have wisdom.', 'Charles Spurgeon', 10),
(22, 'Not until we have become humble and teachable, standing in awe of God''s holiness and sovereignty. acknowledging our own littleness, distrusting our own thoughts, and willing to have our minds turned upside down, can divine wisdom become ours.', 'J.I. Packer', 10),
(23, 'Peace comes when there is no cloud between us and God. Peace is the consequence of forgiveness, God''s removal of that which obscures His face and so breaks union with Him.', 'Charles H. Brent', 11),
(24, 'If you''re missing joy and peace, you''re not trusting God.', 'Joyce Meyer', 11),
(25, 'A Christian without patience is like a soldier without arms.', 'Thomas Watson', 12),
(26, 'In regard of God, patience is a submission to His sovereignty. To endure a trial, simply because we cannot avoid or resist it, is not Christian patience. But to humbly submit because it is the will of God to inflict the trial, to be silent because the sovereignty of God orders it - is true godly patience.', 'Stephen Charnock', 12),
(27, 'Friendship is born at that moment when one person says to another: What! You too? I thought I was the only one.', 'C.S. Lewis', 13),
(28, 'True friendship needs no reciprocation.', 'Jack Hyles', 13),
(29, 'By perseverance the snail reached the ark.', 'Charles Spurgeon', 14),
(30, 'Beginning well is a momentary thing; finishing well is a lifelong thing.\r\n', 'Ravi Zacharias', 14),
(31, 'God is the only one who can make the valley of trouble a door of hope.', 'Catherine Marshall', 15),
(32, 'Other men see only a hopeless end, but the Christian rejoices in an endless hope.', 'Gilbert M. Beeken', 15);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `topic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic`) VALUES
(1, 'Grief'),
(2, 'Forgiveness'),
(3, 'Trust'),
(4, 'Prayer'),
(5, 'Love'),
(6, 'Doubt'),
(7, 'Faith'),
(8, 'Strength'),
(9, 'Money'),
(10, 'Wisdom'),
(11, 'Peace'),
(12, 'Patience'),
(13, 'Friendship'),
(14, 'Perseverance'),
(15, 'Hope');

-- --------------------------------------------------------

--
-- Table structure for table `verses`
--

CREATE TABLE `verses` (
  `verse_id` int(11) NOT NULL,
  `verse` text NOT NULL,
  `book` text NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verses`
--

INSERT INTO `verses` (`verse_id`, `verse`, `book`, `topic_id`) VALUES
(1, 'Be kind and compassionate to one another, forgiving each other, just as in Christ God forgave you.', 'Ephesians 4:32', 2),
(2, 'Come now, let us reason together, says the LORD: though your sins are like scarlet, they shall be as white as snow; though they are red like crimson, they shall become like wool.', 'Isaiah 1:18', 2),
(3, 'Who is a God like you, who pardons sin and forgives the transgression of the remnant of his inheritance? You do not stay angry forever but delight to show mercy.', 'Micah 7:18', 2),
(4, 'He will wipe away every tear from their eyes, and death shall be no more, neither shall there be mourning, nor crying, nor pain anymore, for the former things have passed away.', 'Revelation 21:4', 1),
(5, 'The LORD is close to the brokenhearted and saves those who are crushed in spirit.', 'Psalm 34:18', 1),
(6, 'Blessed are those who mourn, for they shall be comforted.', 'Matthew 5:4', 1),
(7, 'Have I not commanded you? Be strong and courageous. Do not be frightened, and do not be dismayed, for the LORD your God is with you wherever you go.', 'Joshua 1:9', 3),
(8, 'And those who know your name put their trust in you, for you, O LORD, have not forsaken those who seek you.', 'Psalm 9:10', 3),
(9, 'Look at the birds of the air; they do not sow or reap or store away in barns, and yet your heavenly Father feeds them. Are you not much more valuable than they?', 'Matthew 6:26', 3),
(10, 'And this is the confidence that we have toward him, that if we ask anything according to his will he hears us.', '1 John 5:14', 4),
(11, 'This, then, is how you should pray: "Our Father in heaven, hallowed be your name, your kingdom come, your will be done, on earth as it is in heaven. Give us today our daily bread. And forgive us our debts, as we also have forgiven our debtors. And lead us not into temptation,but deliver us from the evil one."', 'Matthew 6:9-13', 4),
(12, 'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God.', 'Philippians 4:6', 4),
(13, 'Love is patient, love is kind. It does not envy, it does not boast, it is not proud. It does not dishonor others, it is not self-seeking, it is not easily angered, it keeps no record of wrongs. Love does not delight in evil but rejoices with the truth. It always protects, always trusts, always hopes, always perseveres. Love never fails. But where there are prophecies, they will cease; where there are tongues, they will be stilled; where there is knowledge, it will pass away.\r\n', '1 Corinthians 13:4-8 ', 5),
(14, 'There is no fear in love, but perfect love casts out fear. For fear has to do with punishment, and whoever fears has not been perfected in love. We love because he first loved us.', '1 John 4:18-19', 5),
(15, 'Greater love has no one than this: to lay down one’s life for one’s friends.', 'John 15:13', 5),
(19, 'The LORD said, "I will surely return to you about this time next year, and Sarah your wife shall have a son." And Sarah was listening at the tent door behind him. Now Abraham and Sarah were old, advanced in years. The way of women had ceased to be with Sarah. So Sarah laughed to herself, saying, "After I am worn out, and my lord is old, shall I have pleasure?" The LORD said to Abraham, "Why did Sarah laugh and say, ''Shall I indeed bear a child, now that I am old?'' Is anything too hard for the LORD? At the appointed time I will return to you, about this time next year, and Sarah shall have a son."', 'Genesis 18:10-14', 6),
(20, 'For I know the plans I have for you,’ declares the LORD, ‘plans to prosper you and not to harm you, plans to give you hope and a future. Then you will call on me and come and pray to me, and I will listen to you. You will seek me and find me when you seek me with all your heart.', 'Jeremiah 29:11-13', 6),
(21, 'I remain confident of this: I will see the goodness of the LORD in the land of the living. Wait for the LORD; be strong and take heart and wait for the LORD.', 'Psalm 27:13-14', 6),
(22, 'He replied, “Because you have so little faith. Truly I tell you, if you have faith as small as a mustard seed, you can say to this mountain, ‘Move from here to there,’ and it will move. Nothing will be impossible for you.”', 'Matthew 17:20', 7),
(23, 'Now faith is confidence in what we hope for and assurance about what we do not see.', 'Hebrews 11:1', 7),
(24, 'For it is by grace you have been saved, through faith—and this is not from yourselves, it is the gift of God— not by works, so that no one can boast.', 'Ephesians 2:8-9', 7),
(25, 'I can do all this through him who gives me strength.', 'Philippians 4:13', 8),
(26, 'But he said to me, “My grace is sufficient for you, for my power is made perfect in weakness.” Therefore I will boast all the more gladly about my weaknesses, so that Christ’s power may rest on me. That is why, for Christ’s sake, I delight in weaknesses, in insults, in hardships, in persecutions, in difficulties. For when I am weak, then I am strong.', '2 Corinthians 12:9-10', 8),
(27, 'God is our refuge and strength, an ever-present help in trouble.', 'Psalm 46:1', 8),
(28, 'No one can serve two masters. Either you will hate the one and love the other, or you will be devoted to the one and despise the other. You cannot serve both God and money.', 'Matthew 6:24', 9),
(29, 'Those who want to get rich fall into temptation and a trap and into many foolish and harmful desires that plunge people into ruin and destruction. For the love of money is a root of all kinds of evil. Some people, eager for money, have wandered from the faith and pierced themselves with many griefs. But you, man of God, flee from all this, and pursue righteousness, godliness, faith, love, endurance and gentleness.', '1 Timothy 6:9-11', 9),
(30, 'Sell your possessions and give to the poor. Provide purses for yourselves that will not wear out, a treasure in heaven that will never fail, where no thief comes near and no moth destroys.', 'Luke 12:33', 9),
(31, 'For the foolishness of God is wiser than human wisdom, and the weakness of God is stronger than human strength.', '1 Corinthians 18:25', 10),
(32, 'If any of you lacks wisdom, you should ask God, who gives generously to all without finding fault, and it will be given to you.', 'James 1:5', 10),
(33, 'How much better to get wisdom than gold,\r\nto get insight rather than silver!', 'Proverbs 16:16', 10),
(34, 'Make every effort to live in peace with everyone and to be holy; without holiness no one will see the Lord.', 'Hebrews 12:14', 11),
(35, 'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God. And the peace of God, which transcends all understanding, will guard your hearts and your minds in Christ Jesus.', 'Philippians 4:6-7', 11),
(36, 'You will keep in perfect peace those whose minds are steadfast, because they trust in you.', 'Isaiah 26:3', 11),
(37, 'Whoever is patient has great understanding, but one who is quick-tempered displays folly.', 'Proverbs 14:29', 12),
(38, 'Therefore, as God’s chosen people, holy and dearly loved, clothe yourselves with compassion, kindness, humility, gentleness and patience.', 'Colossians 3:12', 12),
(39, 'Yet the Lord longs to be gracious to you; therefore he will rise up to show you compassion. For the Lord is a God of justice. Blessed are all who wait for him!', 'Isaiah 30:18', 12),
(40, 'One who has unreliable friends soon comes to ruin, but there is a friend who sticks closer than a brother.', 'Proverbs 18:24', 13),
(41, 'Do not be misled: “Bad company corrupts good character.”', '1 Corinthians 15:33', 13),
(42, 'Two are better than one, because they have a good return for their labor: 10 If either of them falls down, one can help the other up. But pity anyone who falls and has no one to help them up.', 'Ecclesiastes 4:9-10', 13),
(43, 'Blessed is the one who perseveres under trial because, having stood the test, that person will receive the crown of life that the Lord has promised to those who love him.', 'James 1:12', 14),
(44, 'We rejoice in our sufferings, knowing that suffering produces endurance, and endurance produces character, and character produces hope.', 'Romans 5:3-4', 14),
(45, 'Therefore, since we are surrounded by so great a cloud of witnesses, let us also lay aside every weight, and sin which clings so closely, and let us run with endurance the race that is set before us, looking to Jesus, the founder and perfecter of our faith, who for the joy that was set before him endured the cross, despising the shame, and is seated at the right hand of the throne of God.', 'Hebrews 12:1-2', 14),
(46, 'Why, my soul, are you downcast? Why so disturbed within me? Put your hope in God, for I will yet praise him, my Savior and my God.', 'Psalm 42:11', 15),
(47, 'But those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint.', 'Isaiah 40:31', 15),
(48, 'May the God of hope fill you with all joy and peace as you trust in him, so that you may overflow with hope by the power of the Holy Spirit.', 'Romans 15:13', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `verses`
--
ALTER TABLE `verses`
  ADD PRIMARY KEY (`verse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `quote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `verses`
--
ALTER TABLE `verses`
  MODIFY `verse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
