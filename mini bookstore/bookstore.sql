-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 09:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `biographies`
--

CREATE TABLE `biographies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `cover` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `table_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biographies`
--

INSERT INTO `biographies` (`id`, `title`, `price`, `cover`, `author`, `description`, `table_name`) VALUES
(1, 'Greenlights', 26.99, 'https://m.media-amazon.com/images/I/41JMH+5JNCL.jpg', 'Matthew McConaughey', 'From the Academy Award®–winning actor, an unconventional memoir filled with raucous stories, outlaw wisdom, and lessons learned the hard way about living with greater satisfaction\r\nI’ve been in this life for fifty years, been trying to work out its riddle for forty-two, and been keeping diaries of clues to that riddle for the last thirty-five. Notes about successes and failures, joys and sorrows, things that made me marvel, and things that made me laugh out loud. How to be fair. How to have less stress. How to have fun. How to hurt people less. How to get hurt less. How to be a good man. How to have meaning in life. How to be more me.', 'biographies'),
(2, 'A Promised Land', 14.99, 'https://images-na.ssl-images-amazon.com/images/I/91+NBrXG-PL.jpg', 'Barack Obama', 'A riveting, deeply personal account of history in the making, from the president who inspired us to believe in the power of democracy.\r\nIn the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency—a time of dramatic transformation and turmoil.', 'biographies'),
(3, 'Steve Jobs', 18.99, 'https://images-na.ssl-images-amazon.com/images/I/61n431BDxGL.jpg', ' Walter Isaacson', 'Walter Isaacson\'s \"enthralling\" (The New Yorker) worldwide bestselling biography of Apple cofounder Steve Jobs. Based on more than forty interviews with Steve Jobs conducted over two years--as well as interviews with more than 100 family members, friends, adversaries, competitors, and colleagues--Walter Isaacson has written a riveting story of the roller-coaster life and searingly intense personality of a creative entrepreneur whose passion for perfection and ferocious drive revolutionized six industries: personal computers, animated movies, music, phones, tablet computing, and digital publishing. Isaacson\'s portrait touched millions of readers. At a time when America is seeking ways to sustain its innovative edge, Jobs stands as the ultimate icon of inventiveness and applied imagination. He knew that the best way to create value in the twenty-first century was to connect creativity with technology. He built a company where leaps of the imagination were combined with remarkable feats o', 'biographies'),
(4, 'The Autobiography of Malcolm X', 19.99, 'https://images-na.ssl-images-amazon.com/images/I/819Mwerum4L.jpg', 'Malcolm X', 'Through a life of passion and struggle, Malcolm X became one of the most influential figures of the 20th Century. In this riveting account, he tells of his journey from a prison cell to Mecca, describing his transition from hoodlum to Muslim minister. Here, the man who called himself \"the angriest Black man in America\" relates how his conversion to true Islam helped him confront his rage and recognize the brotherhood of all mankind.\r\nAn established classic of modern America, \"The Autobiography of Malcolm X\" was hailed by the New York Times as \"Extraordinary. A brilliant, painful, important book.', 'biographies');

-- --------------------------------------------------------

--
-- Table structure for table `popular_science`
--

CREATE TABLE `popular_science` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `cover` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` varchar(555) NOT NULL,
  `table_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `popular_science`
--

INSERT INTO `popular_science` (`id`, `title`, `price`, `cover`, `author`, `description`, `table_name`) VALUES
(2, 'A Life on Our Planet', 22.99, 'https://images-na.ssl-images-amazon.com/images/I/81I5j2kswrL.jpg', 'David Attenborough', 'I am 94. I\'ve had an extraordinary life. It\'s only now that I appreciate how extraordinary.\r\nAs a young man, I felt I was out there in the wild, experiencing the untouched natural world - but it was an illusion. The tragedy of our time has been happening all around us, barely noticeable from day to day - the loss of our planet\'s wild places, its biodiversity.\r\n\r\nI have been witness to this decline. A Life on Our Planet is my witness statement, and my vision for the future. It is the story of how we came to make this, our greatest mistake.', 'popular_science'),
(3, 'The God Particle', 18.99, 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1368575156l/12915376.jpg', 'Leon Lederman', 'In this extraordinarily accessible and enormously witty book, the Nobel Prize-winning physicist Leon Lederman guides us on a fascinating tour of the history of particle physics. The book takes us from the Greeks\' earliest scientific observations through Einstein and beyond in an inspiring celebration of human curiosity. It ends with the quest for the Higgs boson, nicknamed the God Particle, which scientists hypothesize will help unlock the last secrets of the subatomic universe. ', 'popular_science'),
(4, 'On the Origin of Species', 7.99, 'https://mediacdn.nhbs.com/jackets/jackets_resizer_xlarge/19/194331.jpg', 'Charles Darwin', 'Darwin\'s theory of natural selection issued a profound challenge to orthodox thought and belief: no being or species has been specifically created; all are locked into a pitiless struggle for existence, with extinction looming for those not fitted for the task.\r\nYet The Origin of Species (1859) is also a humane and inspirational vision of ecological interrelatedness, revealing the complex mutual interdependencies between animal and plant life, climate and physical environment, and—by implication—within the human world.', 'popular_science'),
(5, 'Cosmos', 18.99, 'https://images.penguinrandomhouse.com/cover/9780345539434', 'Carl Sagan', 'Cosmos has 13 heavily illustrated chapters, corresponding to the 13 episodes of the Cosmos television series. In the book, Sagan explores 15 billion years of cosmic evolution and the development of science and civilization. Cosmos traces the origins of knowledge and the scientific method, mixing science and philosophy, and speculates to the future of science. The book also discusses the underlying premises of science by providing biographical anecdotes about many prominent scientists throughout history, placing their contributions into the broader c', 'popular_science'),
(6, 'A Brief History of Everyone Who Ever Lived', 19.99, 'https://images-na.ssl-images-amazon.com/images/I/51JGZhNWNYL.jpg', 'Adam Rutherford', 'This is a story about you. It is the history of who you are and how you came to be. It is unique to you, as it is to each of the 100 billion modern humans who have ever drawn breath. But it is also our collective story, because in every one of our genomes we each carry the history of our species births, deaths, disease, war, famine, migration, and a lot of sex.', 'popular_science'),
(7, 'The Immortal Life of Henrietta Lacks', 9.99, 'https://m.media-amazon.com/images/I/51kYtX4Is5L.jpg', ' Rebecca Skloot', 'Her name was Henrietta Lacks, but scientists know her as HeLa. She was a poor Southern tobacco farmer who worked the same land as her enslaved ancestors, yet her cells—taken without her knowledge—became one of the most important tools in medicine. The first “immortal” human cells grown in culture, they are still alive today, though she has been dead for more than sixty years. If you could pile all HeLa cells ever grown onto a scale, they’d weigh more than 50 million metric tons—as much as a hundred Empire State Buildings.', 'popular_science'),
(8, 'Silent Spring', 13.99, 'https://images-na.ssl-images-amazon.com/images/I/41m3ZOKS0oL._SX331_BO1,204,203,200_.jpg', ' Rachel Carson', 'Rachel Carson’s Silent Spring was first published in three serialized excerpts in the New Yorker in June of 1962. The book appeared in September of that year and the outcry that followed its publication forced the banning of DDT and spurred revolutionary changes in the laws affecting our air, land, and water. Carson’s passionate concern for the future of our planet reverberated powerfully throughout the world, and her eloquent book was instrumental in launching the environmental movement. It is without question one of the landmark books of the twent', 'popular_science'),
(9, 'What If? ', 9.99, 'https://images-na.ssl-images-amazon.com/images/I/71ZC0Vf4EeL.jpg', ' Randall Munroe', 'Randall Munroe left NASA in 2005 to start up his hugely popular site XKCD \'a web comic of romance, sarcasm, math and language\' which offers a witty take on the world of science and geeks. It now has 600,000 to a million page hits daily. Every now and then, Munroe would get emails asking him to arbitrate a science debate. \'My friend and I were arguing about what would happen if a bullet got struck by lightning, and we agreed that you should resolve it . . . \' He liked these questions so much that he started up What If.', 'popular_science'),
(10, 'The Elegant Universe', 16.99, 'https://images-na.ssl-images-amazon.com/images/I/914DtvHl2YL.jpg', ' Brian Greene', 'A new edition of the New York Times bestseller—now a three-part Nova special: a fascinating and thought-provoking journey through the mysteries of space, time, and matter.\r\nNow with a new preface (not in any other edition) that will review the enormous public reception of the relatively obscure string theory—made possible by this book and an increased number of adherents amongst physicists—The Elegant Universe \"sets a standard that will be hard to beat\"', 'popular_science'),
(11, 'Brief Answers to the Big Questions', 11.99, 'https://images-na.ssl-images-amazon.com/images/I/514v5blcWhL.jpg', 'Stephen Hawking', 'Stephen Hawking was recognized as one of the greatest minds of our time and a figure of inspiration after defying his ALS diagnosis at age twenty-one. He is known for both his breakthroughs in theoretical physics as well as his ability to make complex concepts accessible for all, and was beloved for his mischievous sense of humor. At the time of his death, Hawking was working on a final project: a book compiling his answers to the \"big\" questions that he was so often posed--questions that ranged beyond his academic field.', 'popular_science'),
(12, 'The Making of the Atomic Bomb', 30.99, 'https://images-na.ssl-images-amazon.com/images/I/61qZKgYy2uL.jpg', 'Richard Rhodes', 'Few great discoveries have evolved so swiftly -- or have been so misunderstood. From the theoretical discussions of nuclear energy to the bright glare of Trinity there was a span of hardly more than twenty-five years. What began as merely an interesting speculative problem in physics grew into the Manhattan Project, and then into the Bomb with frightening rapidity, while scientists known only to their peers -- Szilard, Teller, Oppenheimer, Bohr, Meitner, Fermi, Lawrence, and yon Neumann -- stepped from their ivory towers into the limelight.', 'popular_science'),
(13, 'The Order of Time', 14.99, 'https://images-na.ssl-images-amazon.com/images/I/71cUncd3mzL.jpg', 'Carlo Rovelli', 'Time is a mystery that does not cease to puzzle us. Philosophers, artists and poets have long explored its meaning while scientists have found that its structure is different from the simple intuition we have of it. From Boltzmann to quantum theory, from Einstein to loop quantum gravity, our understanding of time has been undergoing radical transformations. Time flows at different speeds in different places, the past and the future differ far less than we might think and the very notion of the present evaporates in the vast universe.', 'popular_science'),
(14, 'The God Equation', 13.99, 'https://m.media-amazon.com/images/I/414CEC4DZmL.jpg', 'Michio Kaku', 'When Newton discovered the law of gravity, he unified the rules governing the heavens and the Earth. Since then, physicists have been placing new forces into ever-grander theories. But perhaps the ultimate challenge is achieving a monumental synthesis of the two remaining theories--relativity and the quantum theory. This would be the crowning achievement of science, a profound merging of all the forces of nature into one beautiful, magnificent equation to unlock the deepest mysteries in science: What happened before the Big Bang? What lies on the ot', 'popular_science'),
(15, 'Infinite Powers', 9.99, 'https://m.media-amazon.com/images/I/51Q0+DRzYUL.jpg', 'Steven H Strogatz', 'Without calculus, we wouldn’t have cell phones, TV, GPS, or ultrasound. We wouldn’t have unraveled DNA or discovered Neptune or figured out how to put 5,000 songs in your pocket.\r\nThough many of us were scared away from this essential, engrossing subject in high school and college, Steven Strogatz’s brilliantly creative, down‑to‑earth history shows that calculus is not about complexity; it’s about simplicity. It harnesses an unreal number—infinity—to tackle real‑world problems, breaking them down into easier ones and then reassembling the answers in', 'popular_science'),
(16, 'Explaining Humans', 4.99, 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1583412239l/52114854._SY475_.jpg', 'Camilla Pang', 'How proteins, machine learning and molecular chemistry can teach us about the complexities of human behaviour and the world around us.\r\nHow do we understand the people around us? How do we recognise people\'s motivations, their behaviour, or even their facial expressions? And, when do we learn the social cues that dictate human behaviour?', 'popular_science'),
(17, 'Other Minds', 12.99, 'https://images-na.ssl-images-amazon.com/images/I/916mFwv3plL.jpg', 'Peter Godfrey-Smith', 'Although mammals and birds are widely regarded as the smartest creatures on earth, it has lately become clear that a very distant branch of the tree of life has also sprouted higher intelligence: the cephalopods, consisting of the squid, the cuttlefish, and above all the octopus. In captivity, octopuses have been known to identify individual human keepers, raid neighboring tanks for food, turn off lightbulbs by spouting jets of water, plug drains, and make daring escapes. How is it that a creature with such gifts evolved through an evolutionary line', 'popular_science');

-- --------------------------------------------------------

--
-- Table structure for table `thrillers`
--

CREATE TABLE `thrillers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `cover` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `table_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thrillers`
--

INSERT INTO `thrillers` (`id`, `title`, `price`, `cover`, `author`, `description`, `table_name`) VALUES
(1, 'The Silent Patient', 19.99, 'https://images-na.ssl-images-amazon.com/images/I/91lslnZ-btL.jpg', 'Alex Michaelides', 'Alicia Berenson’s life is seemingly perfect. A famous painter married to an in-demand fashion photographer, she lives in a grand house with big windows overlooking a park in one of London’s most desirable areas. One evening her husband Gabriel returns home late from a fashion shoot, and Alicia shoots him five times in the face, and then never speaks another word.\r\n', 'thrillers'),
(2, 'The Guest List', 25.99, 'https://images-na.ssl-images-amazon.com/images/I/81sh+BJhaOS.jpg', ' Lucy Foley', 'The bride ‧ The plus one ‧ The best man ‧ The wedding planner ‧ The bridesmaid ‧ The body\r\nOn an island off the coast of Ireland, guests gather to celebrate two people joining their lives together as one. The groom: handsome and charming, a rising television star. The bride: smart and ambitious, a magazine publisher. It’s a wedding for a magazine, or for a celebrity: the designer dress, the remote location, the luxe party favors, the boutique whiskey. The cell phone service may be spotty and the waves may be rough, but every detail has been expertly planned and will be expertly executed.', 'thrillers'),
(3, 'Billy Summers', 19.99, 'https://images-na.ssl-images-amazon.com/images/I/81GqtNbs+PL.jpg', 'Stephen King', 'Billy Summers is a man in a room with a gun. He’s a killer for hire and the best in the business. But he’ll do the job only if the target is a truly bad guy. And now Billy wants out. But first there is one last hit. Billy is among the best snipers in the world, a decorated Iraq war vet, a Houdini when it comes to vanishing after the job is done. So what could possibly go wrong?\r\n\r\nHow about everything.', 'thrillers'),
(4, 'The Noise', 8.99, 'https://images-na.ssl-images-amazon.com/images/I/911Kkq731-L.jpg', 'James Petterson', 'If you hear it, it’s too late. \r\n\r\n“A really entertaining thriller [that] like Michael Crichton . . . keeps racheting up the suspense.” –Booklist\r\n\r\nIn the shadow of Mount Hood, sixteen-year-old Tennant is checking rabbit traps with her eight-year-old sister Sophie when the girls are suddenly overcome by a strange vibration rising out of the forest, building in intensity until it sounds like a deafening crescendo of screams. From out of nowhere, their father sweeps them up and drops them through a trapdoor into a storm cellar. But the sound only gets worse . . .', 'thrillers'),
(5, 'We Were Never Here', 13.99, 'https://images-na.ssl-images-amazon.com/images/I/9192SEK5RpL.jpg', 'Andrea Bartz', 'Emily is having the time of her life--she\'s in the mountains of Chile with her best friend, Kristen, on their annual reunion trip, and the women are feeling closer than ever. But on the last night of their trip, Emily enters their hotel suite to find blood and broken glass on the floor. Kristen says the cute backpacker she\'d been flirting with attacked her, and she had no choice but to kill him in self-defense. Even more shocking: The scene is horrifyingly similar to last year\'s trip, when another backpacker wound up dead. Emily can\'t believe it\'s happened again--can lightning really strike twice?\r\n', 'thrillers'),
(6, 'The Maidens', 9.99, 'https://m.media-amazon.com/images/I/61Jqm0WUkjL.jpg', 'Alex Michaelides', 'Edward Fosca is a murderer. Of this Mariana is certain. But Fosca is untouchable. A handsome and charismatic Greek Tragedy professor at Cambridge University, Fosca is adored by staff and students alike—particularly by the members of a secret society of female students known as The Maidens.\r\nMariana Andros is a brilliant but troubled group therapist who becomes fixated on The Maidens when one member, a friend of Mariana’s niece Zoe, is found murdered in Cambridge.', 'thrillers'),
(7, 'All Our Darkest Secrets', 12.99, 'https://images-na.ssl-images-amazon.com/images/I/61eAFtLnKiS.jpg', 'Martyn Ford', 'He’d do anything to protect his wife. But what if that meant making the biggest mistake of all?\r\nJames Casper is one of the good guys. A DEA agent. A loyal husband. With his sights set on the man at the top of the city’s opioid crisis, James is about to make the biggest bust of his career.\r\nThen his beloved wife Rosie does something terrible, and James must choose: report it—or help her. He knows how this works, and he tells himself he’s smart enough to get away with murder. But James’s worst enemy knows what they have done—and he won’t hesitate to use it to manipulate him.\r\nJames is dragged into a dark and dangerous world. As events spiral and loyalties are tested, he realizes there’s only one way out. And that is to be even more ruthless than the people he’s working for.', 'thrillers'),
(8, 'A Time for Mercy', 16.99, 'https://images-na.ssl-images-amazon.com/images/I/913YS-xyYBL.jpg', 'Josh Grisham', 'Jake Brigance, the protagonist of A Time to Kill, John Grisham’s classic legal thriller is back. This time he\'s at the epicenter of a sensational murder trial that bitterly divides the citizens of Clanton, Mississippi.\r\nA Time to Kill is one of the most popular novels of our time. It established Jake as a classic American hero—a lawyer who seeks truth and justice at all costs, even when his life and reputation are on the line.\r\nBrigance returned in 2013’s Sycamore Row, in which he once again found himself embroiled in a deeply divisive trial.', 'thrillers');

-- --------------------------------------------------------

--
-- Table structure for table `top_books`
--

CREATE TABLE `top_books` (
  `title` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `cover` varchar(255) NOT NULL,
  `author` varchar(40) NOT NULL,
  `id` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_books`
--

INSERT INTO `top_books` (`title`, `price`, `cover`, `author`, `id`, `description`, `table_name`) VALUES
('To Kill A Mockingbird', 12.99, 'https://images-na.ssl-images-amazon.com/images/I/71FxgtFKcQL.jpg', 'Harper Lee', 1, 'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it. \"To Kill A Mockingbird\" became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.', 'top_books'),
('Fear and Loathing in Las Vegas', 12.99, 'https://images.penguinrandomhouse.com/cover/9780679785897', 'Hunter S Thompson', 3, 'Fear and Loathing in Las Vegas is the best chronicle of drug-soaked, addle-brained, rollicking good times ever committed to the printed page. It is also the tale of a long weekend road trip that has gone down in the annals of American pop culture as one of the strangest journeys ever undertaken.', 'top_books'),
('The Godfather', 18.99, 'https://images-na.ssl-images-amazon.com/images/I/61RZI1cKZUL.jpg', 'Mario Puzo', 4, 'The Godfather—the epic tale of crime and betrayal that became a global phenomenon. Almost fifty years ago, a classic was born. A searing portrayal of the Mafia underworld, The Godfather introduced readers to the first family of American crime fiction, the Corleones, and their powerful legacy of tradition, blood, and honor. The seduction of power, the pitfalls of greed, and the allegiance to family—these are the themes that have resonated with millions of readers around the world and made The God', 'top_books'),
('The Picture of Dorian Gray', 7.99, 'https://www.delfi.rs/_img/artikli/2015/09/picture_of_dorian_gray_vv.jpg', 'Oscar Wilde', 5, 'Written in his distinctively dazzling manner, Oscar Wilde’s story of a fashionable young man who sells his soul for eternal youth and beauty is the author’s most popular work.', 'top_books'),
('Crime and Punishment', 18.99, 'https://kbimages1-a.akamaihd.net/fd843459-3520-49f9-a18e-907940466cf7/1200/1200/False/crime-and-punishment-270.jpg', 'Fyodor Dostoevsky', 6, 'Raskolnikov, a destitute and desperate former student, wanders through the slums of St Petersburg and commits a random murder without remorse or regret. He imagines himself to be a great man, a Napoleon: acting for a higher purpose beyond conventional moral law.', 'top_books'),
('Animal Farm', 5.99, 'https://images-na.ssl-images-amazon.com/images/I/71JUJ6pGoIL.jpg', 'George Orwell', 7, 'A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned –a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.', 'top_books'),
('1984', 14.99, 'https://images-na.ssl-images-amazon.com/images/I/91SZSW8qSsL.jpg', 'George Orwell', 8, 'Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real. Published in 1949, the book offers political satirist George Orwell\'s nightmarish vision of a totalitarian, bureaucratic world and one poor stiff\'s attempt to find individuality. The brilliance of the novel is Orwell\'s prescience of modern life—the ubiquity of television, the distortion of the language—and his ability to construct such a thorough version of hell. ', 'top_books'),
('The Great Gatsby', 11.99, 'https://images-na.ssl-images-amazon.com/images/I/81djg0KWthS.jpg', 'F. Scott Fitzgerald', 9, 'Jay Gatsby, the enigmatic millionaire who throws decadent parties but doesn’t attend them, is one of the great characters of American literature. This is F. Scott Fitzgerald at his most sparkling and devastating.', 'top_books'),
('The Lord of The Rings', 29.99, 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1566425108l/33.jpg', 'J. R. R. Tolkien', 10, 'Perhaps the greatest story ever told, J. R. R. Tolkien’s incredible trilogy of otherworldliness brought a world of hobbits, dwarves, elves and orcs to life in a way never read before. Ultimately a tale of companionship and the battle between good and evil, the fictional world of Middle Earth has endured to become far greater than the sum of its parts.', 'top_books'),
('The Adventure of Hackleberry Finn', 19.99, 'https://d30a6s96kk7rhm.cloudfront.net/original/readings/978/009/957/9780099572978.jpg', 'Mark Twain', 11, 'Meander down the Mississippi River with Huck Finn and Tom Sawyer; on the surface, it’s a simple adventure but dig a little deeper into Mark Twain\'s novel and discover undercurrents of slavery, abuse and corruption in what Hemingway described as \'The best book we\'ve had\'.', 'top_books'),
('The Catcher in The Rye', 6.99, 'https://images-na.ssl-images-amazon.com/images/I/91LvoDqkF1L.jpg', 'J.D. Sallinger', 12, 'This novel’s main character, Holden, is coping with tragic loss, as all of us do in our lives. As he wanders aimlessly around the city, he struggles to plan his next life move, but finds happiness in small joys, such as his strong bond with his sister.', 'top_books'),
('Charlie and The Chocolate Factory', 7.99, 'https://cdn.shopify.com/s/files/1/0173/8676/products/charlie_chocolate.jpg?v=1459668287', 'Roald Dahl', 13, ' Filled with all the sweet treats from your wildest dreams (and proving that nice guys don’t always finish last), Roald Dahl\'s Charlie and the Chocolate Factory is a cautionary tale for both children and adults. Don’t be greedy. Don’t spoil your children. Don’t chew gum. And don’t sit in front of the TV all day. ‘It rots the senses in the head!’', 'top_books'),
('War and Peace', 20.99, 'https://images-na.ssl-images-amazon.com/images/I/A1aDb5U5myL.jpg', 'Leo Tolstoy', 15, 'In Russia\'s struggle with Napoleon, Tolstoy saw a tragedy that involved all mankind. Greater than a historical chronicle, War and Peace is an affirmation of life itself, `a complete picture\', as a contemporary reviewer put it, `of everything in which people find their happiness and greatness, their grief and humiliation\'.', 'top_books'),
('Jane Eyre', 14.99, 'https://images-na.ssl-images-amazon.com/images/I/91zU70Aw9IS.jpg', 'Charlotte Bronte', 16, 'Orphaned as a child, Jane has felt an outcast her whole young life. Her courage is tested once again when she arrives at Thornfield Hall, where she has been hired by the brooding, proud Edward Rochester to care for his ward Adèle. Jane finds herself drawn to his troubled yet kind spirit. She falls in love. Hard.', 'top_books'),
('Old Man and The Sea', 19.99, 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9780743237307/the-old-man-and-the-sea-9780743237307_hr.jpg', 'Ernest Hemingway', 17, 'This short novel, already a modern classic, is the superbly told, tragic story of a Cuban fisherman in the Gulf Stream and the giant Marlin he kills and loses—specifically referred to in the citation accompanying the author\'s Nobel Prize for literature in 1954. (less)', 'top_books'),
('The Stranger', 8.99, 'https://prodimage.images-bn.com/pimages/9789390492589_p0_v1_s550x406.jpg', 'Albert Camus', 18, 'Through the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach, Camus explored what he termed \"the nakedness of man faced with the absurd.\" First published in English in 1946; now in a new translation by Matthew Ward. ', 'top_books'),
('Harry Potter and The Philosopher\'s Stone', 19.99, 'https://images-na.ssl-images-amazon.com/images/I/81YOuOGFCJL.jpg', 'J.K. Rowling', 19, 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.', 'top_books'),
('A Game of Thrones', 25.99, 'https://images-na.ssl-images-amazon.com/images/I/91dSMhdIzTL.jpg', 'G. R. R. Martin', 20, 'Here is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. ', 'top_books'),
('Sherlock Holmes Collection', 40.99, 'https://images-na.ssl-images-amazon.com/images/I/91dDv9WOcFL.jpg', 'Arthur Conan Doyle', 21, 'Sherlock Holmes is a fictional private detective created by British author Sir Arthur Conan Doyle. Referring to himself as a \"consulting detective\" in the stories, Holmes is known for his proficiency with observation, deduction, forensic science, and logical reasoning that borders on the fantastic, which he employs when investigating cases for a wide variety of clients, including Scotland Yard.', 'top_books'),
('Murder On The Orient Express', 12.99, 'https://images-na.ssl-images-amazon.com/images/I/5178IkM3VqL.jpg', 'Agatha Christie', 22, 'Just after midnight, a snowdrift stops the Orient Express in its tracks. The luxurious train is surprisingly full for the time of the year, but by the morning it is one passenger fewer. An American tycoon lies dead in his compartment, stabbed a dozen times, his door locked from the inside.', 'top_books'),
('A Brief History of Time', 22.99, 'https://images-na.ssl-images-amazon.com/images/I/51xE6ZCQdqS._SX331_BO1,204,203,200_.jpg', 'Stephen Hawking', 23, 'In the ten years since its publication in 1988, Stephen Hawking\'s classic work has become a landmark volume in scientific writing, with more than nine million copies in forty languages sold worldwide. That edition was on the cutting edge of what was then known about the origins and nature of the universe.', 'top_books'),
('Tesla, SpaceX, and the Quest for a Fantastic Future', 25.99, 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1518291452l/25541028.jpg', 'Ashlee Vance', 24, 'Elon Musk, the entrepreneur and innovator behind SpaceX, Tesla, and SolarCity, sold one of his internet companies, PayPal, for $1.5 billion. Ashlee Vance captures the full spectacle and arc of the genius\'s life and work, from his tumultuous upbringing in South Africa and flight to the United States to his dramatic technical innovations and entrepreneurial pursuits.', 'top_books'),
('Sun Tzu', 6.99, 'https://m.media-amazon.com/images/I/51no+g+ttWL.jpg', 'Sun Tzu', 25, 'Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life.', 'top_books'),
('The Prince', 7.99, 'https://images-na.ssl-images-amazon.com/images/I/41eOgyh6J0L._SX331_BO1,204,203,200_.jpg', 'Niccolo Machiavelli', 26, 'Machiavelli needs to be looked at as he really was. Hence: Can Machiavelli, who makes the following observations, be Machiavellian as we understand the disparaging term? 1. So it is that to know the nature of a people, one need be a Prince; to know the nature of a Prince, one need to be of the people. 2. If a Prince is not given to vices that make him hated, it is unsusal for his subjects to show their affection for him.', 'top_books'),
('Pride and Prejudice', 14.99, 'https://almabooks.com/wp-content/uploads/2016/10/9781847493699.jpg', 'Jane Austen', 27, 'Since its immediate success in 1813, Pride and Prejudice has remained one of the most popular novels in the English language. Jane Austen called this brilliant work \"her own darling child\" and its vivacious heroine, Elizabeth Bennet, \"as delightful a creature as ever appeared in print.\" The romantic clash between the opinionated Elizabeth and her proud beau, Mr. Darcy, is a splendid performance of civilized sparring.', 'top_books'),
('Great Expectations', 18.99, 'https://kbimages1-a.akamaihd.net/76951e87-74ff-4ac7-a120-fecc917d0d95/1200/1200/False/great-expectations-369.jpg', 'Charles Dickens', 28, 'In what may be Dickens\'s best novel, humble, orphaned Pip is apprenticed to the dirty work of the forge but dares to dream of becoming a gentleman — and one day, under sudden and enigmatic circumstances, he finds himself in possession of \"great expectations.\" In this gripping tale of crime and guilt, revenge and reward, the compelling characters include Magwitch, the fearful and fearsome convict; Estella, whose beauty is excelled only by her haughtiness; and the embittered Miss Havisham, an ecce', 'top_books'),
('Little Prince', 4.99, 'https://images-na.ssl-images-amazon.com/images/I/61Zi2jjgfIL.jpg', 'Antoine De Saint - Exupery', 30, 'A pilot stranded in the desert awakes one morning to see, standing before him, the most extraordinary little fellow. \"Please,\" asks the stranger, \"draw me a sheep.\" And the pilot realizes that when life\'s events are too difficult to understand, there is no choice but to succumb to their mysteries. He pulls out pencil and paper... And thus begins this wise and enchanting fable that, in teaching the secret of what is really important in life, has changed forever the world for its readers.\r\n', 'top_books'),
('Hollywood', 8.99, 'https://images-na.ssl-images-amazon.com/images/I/913u5xq5ZBL.jpg', 'Charles Bukowski', 31, 'Henry Chinaski siempre ha estado en pie de guerra, sin bajar la guardia contra el «establishment» y sus infinitos tentáculos. Pero en Hollywood no le será nada fácil: John Pinchot, un enloquecido director de cine, se empeña en llevar a la pantalla sus relatos de juventud, o sea la autobiografía de un alcohólico empedernido.\r\n', 'top_books');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biographies`
--
ALTER TABLE `biographies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_science`
--
ALTER TABLE `popular_science`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thrillers`
--
ALTER TABLE `thrillers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_books`
--
ALTER TABLE `top_books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biographies`
--
ALTER TABLE `biographies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `popular_science`
--
ALTER TABLE `popular_science`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `thrillers`
--
ALTER TABLE `thrillers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `top_books`
--
ALTER TABLE `top_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
