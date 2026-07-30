--
-- PostgreSQL database dump
--


-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-07-30 15:11:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5045 (class 0 OID 16422)
-- Dependencies: 223
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.authors (author_id, author_name) VALUES (1, 'Sarah J. Maas');
INSERT INTO public.authors (author_id, author_name) VALUES (2, 'Rebecca Yarros');
INSERT INTO public.authors (author_id, author_name) VALUES (3, 'Ana Huang');
INSERT INTO public.authors (author_id, author_name) VALUES (4, 'Alex Aster');
INSERT INTO public.authors (author_id, author_name) VALUES (5, 'Stephen King');
INSERT INTO public.authors (author_id, author_name) VALUES (6, 'J.K. Rowling');
INSERT INTO public.authors (author_id, author_name) VALUES (7, 'George Orwell');
INSERT INTO public.authors (author_id, author_name) VALUES (8, 'Suzanne Collins');
INSERT INTO public.authors (author_id, author_name) VALUES (9, 'Callie Hart');
INSERT INTO public.authors (author_id, author_name) VALUES (10, 'Stephanie Garber');
INSERT INTO public.authors (author_id, author_name) VALUES (11, 'Tahereh Mafi');
INSERT INTO public.authors (author_id, author_name) VALUES (12, 'Lauren Roberts');
INSERT INTO public.authors (author_id, author_name) VALUES (13, 'F. Scott Fitzgerald');
INSERT INTO public.authors (author_id, author_name) VALUES (14, 'Ray Bradbury');
INSERT INTO public.authors (author_id, author_name) VALUES (15, 'Gillian Flynn');
INSERT INTO public.authors (author_id, author_name) VALUES (16, 'Freida McFadden');
INSERT INTO public.authors (author_id, author_name) VALUES (17, 'Gary Chapman');
INSERT INTO public.authors (author_id, author_name) VALUES (18, 'Hourly History');
INSERT INTO public.authors (author_id, author_name) VALUES (19, 'Jenny Han');
INSERT INTO public.authors (author_id, author_name) VALUES (20, 'Kit Frick');
INSERT INTO public.authors (author_id, author_name) VALUES (21, 'Adrian Tchaikovsky');
INSERT INTO public.authors (author_id, author_name) VALUES (22, 'Mary E Pearson');
INSERT INTO public.authors (author_id, author_name) VALUES (23, 'Josephine Tey');
INSERT INTO public.authors (author_id, author_name) VALUES (24, 'Erik Larson');
INSERT INTO public.authors (author_id, author_name) VALUES (25, 'Lyla Sage');
INSERT INTO public.authors (author_id, author_name) VALUES (26, 'Kaylie Smith');
INSERT INTO public.authors (author_id, author_name) VALUES (27, 'Orson Scott Card');
INSERT INTO public.authors (author_id, author_name) VALUES (28, 'Kei Sanbe');
INSERT INTO public.authors (author_id, author_name) VALUES (29, 'Margaret Atwood');
INSERT INTO public.authors (author_id, author_name) VALUES (30, 'Harley Laroux');
INSERT INTO public.authors (author_id, author_name) VALUES (31, 'David Byrne');
INSERT INTO public.authors (author_id, author_name) VALUES (32, 'Truman Capote');
INSERT INTO public.authors (author_id, author_name) VALUES (33, 'David McCullough');
INSERT INTO public.authors (author_id, author_name) VALUES (34, 'Navessa Allen');
INSERT INTO public.authors (author_id, author_name) VALUES (35, 'Andy Weir');
INSERT INTO public.authors (author_id, author_name) VALUES (36, 'John Douglas');
INSERT INTO public.authors (author_id, author_name) VALUES (37, 'Mark Olshaker');
INSERT INTO public.authors (author_id, author_name) VALUES (38, 'Charles Duhigg');
INSERT INTO public.authors (author_id, author_name) VALUES (39, 'Morgan Housel');
INSERT INTO public.authors (author_id, author_name) VALUES (40, 'Ernest Cline');
INSERT INTO public.authors (author_id, author_name) VALUES (41, 'Alex Michaelides');
INSERT INTO public.authors (author_id, author_name) VALUES (42, 'Walter Isaacson');
INSERT INTO public.authors (author_id, author_name) VALUES (43, 'Ann Rule');
INSERT INTO public.authors (author_id, author_name) VALUES (44, 'Agatha Christie');
INSERT INTO public.authors (author_id, author_name) VALUES (45, 'Peter Frankopan');
INSERT INTO public.authors (author_id, author_name) VALUES (46, 'Sui Ishida');
INSERT INTO public.authors (author_id, author_name) VALUES (47, 'Shannon Hale');
INSERT INTO public.authors (author_id, author_name) VALUES (48, 'Dean Hale');
INSERT INTO public.authors (author_id, author_name) VALUES (49, 'Alan Moore');
INSERT INTO public.authors (author_id, author_name) VALUES (50, 'David Lloyd');
INSERT INTO public.authors (author_id, author_name) VALUES (51, 'Dave Gibbons');
INSERT INTO public.authors (author_id, author_name) VALUES (52, 'Sarah A Parker');


--
-- TOC entry 5043 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (1, 'A Court of Thorns and Roses', 10.50, 'A Court of Thorns and Roses follows a huntress named Feyre Archeron, who is led into the dangerious, magical world of Prythian.', '9781635575569', 'acotar_front.jpg', 'acotar_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (2, 'A Court of Mist and Fury', 11.50, 'A Court of Mist and Fury continues Feyres journey three months after the events in A Court of Thorns and Roses. She navigates through difficult feelings as she learns more about her new home.', '9781635575583', 'acomaf_front.jpg', 'acomaf_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (3, 'A Court of Wings and Ruin', 11.50, 'A Court of Wings and Ruin takes place after the events of A Court of Mist and Fury. The plot transitions from Feyre trying to learn and survive, to all out war between Hybern and Prythian as the King of Hybern threatens the existence of all who reside there.', '9781635575606', 'acowar_front.jpg', 'acowar_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (4, 'A Court of Frost and Starlight', 9.00, 'A Court of Frost and Starlight is a novella between the major plot points of the series. It brings and end to the plot focus of the Feyre and Rhys love story to move on in the story.', '9781635575620', 'acofas_front.jpg', 'acofas_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (5, 'A Court of Silver Flames', 12.50, 'A Court of Silver Flames tells the story of Nesta, Feyres older sister, and her emotional distress with accepting her new found immortality.', '9781635577990', 'acosf_front.jpg', 'acosf_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (6, 'Throne of Glass', 8.50, 'Throne of Glass follows an assassin named Celaena Sardothien, who must find her way through a series of challenges after being brought to the castle of Rifthold.', '9781639730957', 'throneofglass_front.jpg', 'throneofglass_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (7, 'Crown of Midnight', 8.50, 'Crown of Midnight continues Celaenas journey in the castle, as new mysteries are uncovered and love complicates things.', '9781639730971', 'crownofmidnight_front.jpg', 'crownofmidnight_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (19, 'Onyx Storm', 15.00, 'Onxy Storm continues after the events in Iron Flame. The plot shifts from survival at the college to war to save the continent. She must balance many hardships at once all while trying to save everyone.', '9781649377159', 'onyxstorm_front.jpg', 'onyxstorm_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (8, 'Assassins Blade', 8.50, 'Assassins Blade follows Celaena before she arrived at the mine, and uncovers how she ended up there and why.', '9781639731091', 'assassinsblade_front.jpg', 'assassinsblade_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (9, 'Heir of Fire', 10.00, 'Heir of Fire continues to follow Celaena as she battles depression and begins to pick her self up after the events in Crown of Midnight, when she eventually meets Rowan.', '9781639730995', 'heiroffire_front.jpg', 'heiroffire_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (10, 'Queen of Shadows', 10.00, 'Queen of Shadows follows Celaena, now known as Aelin Ashryver Galathynius as she begins to fight for her crown. Manon, a witch is introduced.', '9781639731015', 'queenofshadows_front.jpg', 'queenofshadows_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (11, 'Empire of Storms', 10.00, 'Empire of Storms continues the long journey of Aelin and her team trying to save the lang from all that threatens it.', '9781639731039', 'empireofstorms_front.jpg', 'empireofstorms_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (12, 'Tower of Dawn', 10.00, 'Tower of Dawn follows Chaol and his road to recovery after the events in Queen of Shadows. What awaits him on the southern continent?', '9781639731053', 'towerofdawn_front.jpg', 'towerofdawn_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (13, 'Kingdom of Ash', 10.50, 'Kingdom of Ash is the teams last effort to defeat their enemies. Will they come together and succeed in the battle of good and evil?', '9781639731077', 'kingdomofash_front.jpg', 'kingdomofash_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (14, 'House of Earth and Blood', 10.50, 'House of Earth and Blood follows a half-fae, half-human named Bryce Quinlan, whos world is turned upside-down when her best friends are killed. Will she find the killer?', '9781635577020', 'houseofearthandblood_front.jpg', 'houseofearthandblood_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (15, 'House of Sky and Breath', 10.50, 'House of Sky and Breath continues the story of Bryce where she must navigate her relationship while navigating through complicated politics and rebel movements.', '9781639731756', 'houseofskyandbreath_front.jpg', 'houseofskyandbreath_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (16, 'House of Flame and Shadow', 10.50, 'House of Flame and Shadow continues after the events in House of Sky and Breath. Stranded in a new realm, she must fight to return to her family.', '9781639736058', 'houseofflameandshadow_front.jpg', 'houseofflameandshadow_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (17, 'Fourth Wing', 15.00, 'Fourth Wing follows Violet Sorrengail who is forced by her mother to train to be a dragon rider.', '9781649379290', 'fourthwing_front.jpg', 'fourthwing_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (18, 'Iron Flame', 15.00, 'Iron Flame continues Violets story as she returns for her second year at Basgiath, where she must face many more challenges.', '9781649379399', 'ironflame_front.jpg', 'ironflame_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (21, 'The Great Gatsby', 5.99, 'The Great Gatsby takes place in the summer of 1922. It explores the world of the wealthy in this time, focusing on a specific millionaire named Jay Gatsby.', '9798405801308', 'greatgatsby_front.jpg', 'greatgatsby_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (22, '1984', 9.99, '1984 follows Winston Smith as he navigates the dystopian area of London, led by the ominous Big Brother.', '9788190326889', '1984_front.jpg', '1984_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (23, 'Fahrenheit 451', 15.00, 'Fahrenheit 451 follows Guy Montag, a fireman who is tasked with burning illegal books. After meeting Clarisse, he starts to question the idea of censorship.', '9781451673319', 'fahrenheit_front.jpg', 'fahrenheit_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (24, 'Twisted Love', 8.00, 'Twisted Love follows the relationship between millionaire, Alex Volkov and college student, Ava Chen. Many secrets are held between them, as they each explore their past trauma.', '9781728274867', 'twistedlove_front.jpg', 'twistedlove_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (25, 'Twisted Games', 8.00, 'Twisted Games follows the relationship between bodyguard, Rhys Larsen and princess, Bridget von Ascheberg. The closer they become, the more difficult it is to stay away, but they are forbidden from being together.', '9781728274874', 'twistedgames_front.jpg', 'twistedgames_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (26, 'Twisted Hate', 9.00, 'Twisted Hate follows the relationship between aspiring doctor, Josh Chen and aspiring lawyer Jules Ambrose. They constantly get on eachothers nerves, but that only makes them want eachother more. As things come up in Jules past however, she is forced to make difficult decisions.', '9781728274881', 'twistedhate_front.jpg', 'twistedhate_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (27, 'Twisted Lies', 9.00, 'Twisted Lies follows the relationship between millionaire, Christian Harper and social media influencer, Stella Alonso. As Stella begins to face threats to her well being and fame, the already obsessed Christian proposes a fake relationship. As lies begin to unfold in their relationship, what will come of them? ', '9781728274898', 'twistedlies_front.jpg', 'twistedlies_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (28, 'It', 12.99, 'It takes place in the town of Derry, Maine, where we follow seven kids who are hunted by Pennywise the Clown.', '9780450411434', 'it_front.jpg', 'it_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (29, 'Pet Sematary', 10.99, 'Pet Sematary follows a family that just moved into the town Ludlow, Maine. The house is close to a busy highway where pets are often killed. Behind the house, there is path that leads to a pet sematary for the local pets that dies, but what secrets lie behind this graveyard?', '9781668075760', 'petsematary_front.jpg', 'petsematary_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (30, 'The Housemaid', 8.99, 'The Housemaid follows Millie Calloway, a young woman who wants fresh start from her criminal record. She begins a seemingly innocent job working as a housemaid for a wealthy family. As she becomes closer to the family, she reveals things better left hidden.', '9781538742570', 'housemaid_front.jpg', 'housemaid_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (31, 'Gone Girl', 4.99, 'Gone Girl centers around the disappearance of Amy Dunne. Amy disappeared on her fifth wedding anniversary, making her husband the prime suspect. The answer is slowly revealed through alternating perspectives of Nick and his experiences, and diary entries written by Amy.', '9780307588371', 'gonegirl_front.jpg', 'gonegirl_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (32, 'The 5 Love Languages', 6.99, 'The 5 Love Languages outlines the five different ways that individuals express and receive love.', '9780802432964', '5lovelanguages_front.jpg', '5lovelanguages_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (34, 'To All the Boys Ive Loved Before', 4.00, 'To All the Boys Ive Loved Before follows a shy highschooler named Lara Jean Song Covey. Lara writes secret love letters to all her crushes throughout the years, rather than expressing her feelings, and they get released to each of the boys she wrote about, causeing her to have to face her feelings.', '9781442426719', 'alltheboysivelovedbefore_front.jpg', 'alltheboysivelovedbefore_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (35, 'See All The Stars', 7.99, 'See All The Stars follows Ellory in her senior year of high school. After an incident happened last year, she had a falling out with her three friends, and is an outcast at school. The story will be slowly revealed through alternating timelines between junior year, and now.', '9781534404373', 'allthestars_front.jpg', 'allthestars_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (36, 'Children of Time', 15.99, 'Children of Time follows two vastly different perspectives, humans, who have left Earth to live on ark spaceships because the planet is dying, and the Portiids, a species of jumping spider that is evolving dramatically.', '9780316452502', 'childrenoftime_front.jpg', 'childrenoftime_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (37, 'Dance of Thieves', 8.00, 'Dance of Thieves follows Kazi, a former street thief, and Jase, the new leader of a powerful clan Patar. After a series of events, Kazi and Jase end up detained together and must rely on eachother to survive.', '9781250159021', 'danceofthieves_front.jpg', 'danceofthieves_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (38, 'Daughter of Time', 11.99, 'Daughter of Time follows inspector Alan Grant, who is hospitalized after a chase with a criminal with a spinal injury and a broken leg. While in the hospital, he tries to uncover a mystery from 500 years ago.', '9780684803869', 'daughteroftime_front.jpg', 'daughteroftime_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (39, 'The Devil in the White City', 5.00, 'The Devil in the White City switches between two stories, one following Daniel Burnham, an architect struggling to build the White City, and H.H. Holmes, a doctor and the builder of the Worlds Fair Hotel, used to lure victims to their death.', '9780375725609', 'devilinthewhitecity_front.jpg', 'devilinthewhitecity_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (40, 'Done and Dusted', 10.00, 'Done and Dusted follows Clementime Ryder, a champion barrel racer. After an accident leaves her seriously injured, she returns to her hometown after running away for years, where she meets Luke Brooks, the only man not to treat her so fragile when she returns.', '9780593732427', 'doneanddusted_front.jpg', 'doneanddusted_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (41, 'Swift and Saddled', 10.00, 'Swift and Saddled follows Weston Ryder, who was introduced in Done and Dusted. He has a great night with a woman in a bar, Ada Hart, who he finds out to be his newest employee the next morning. Ada is determined to keep the relationship professional, but growing feelings make this dynamic difficult.', '9780593732434', 'swiftandsaddled_front.jpg', 'swiftandsaddled_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (42, 'Phantasma', 13.00, 'Phantasma follows Ophelia Grimm, a necromancer, who must enter a deadly competition to find her sister. In order to survive she makes a deal with Blackwell, a phantom trapped in the house. Will she survive and find her sister?', '9781538769256', 'phantasma_front.jpg', 'phantasma_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (43, 'Enchantra', 13.00, 'Enchantra follows Genevieve, the younger sister of Ophelia in Phantasma. While searching for answers about her mothers past in Enchantra, she meets Rowin Silver, who turns her away from the place. She sneaks in and finds herslef in a deadly game of hide and seek.', '9781538770801', 'enchantra_front.jpg', 'enchantra_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (44, 'Enders Game', 5.99, 'Enders Game follows Andrew Ender Wiggin, a child prodigy who, because of his strategic wit, is recruited by the International Fleet. He is sent to battle school where he must navigate the brutal environment.', '9781250773029', 'endersgame_front.jpg', 'endersgame_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (45, 'Erased Volume 1', 9.99, 'Erased follows Satoru Fujinuma, a 29 year old man with a supernatural ability that sends him back in time to prevent tragedies from happening. After a major tragedy, he is named the prime suspect, and his ability sends him 18 years into the past. Now at 11 years old, he relaizes that he must stop the chain of murders that killed his classmate Kayo Hinazuki.', '9780316553315', 'erasedvol1_front.jpg', 'erasedvol1_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (33, 'Alexander Hamilton', 6.99, 'Alexander Hamilton is a biography that traces Alexanders journey from being an orphan to a key individual in the American government.', '9798859882977', '5lovelanguages_front.jpg', 'alexanderhamilton_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (46, 'Erased Volume 2', 9.99, 'Satoru tries to change the timeline, however, as the day of Kayos death approaches, he uncovers secrets about her home life. While trying to navigate her difficult situation, he still searches for the killers identity.', '9780316468442', 'erasedvol2_front.jpg', 'erasedvol2_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (47, 'Erased Volume 3', 9.99, 'Satoru finds out that Kayo was not the only victim, and he must now work to protect other children. As he tries to narrow down the suspects, he gets closer to his teacher Mr. Yashiro. He is eventually forced into direct contact with the killer which leads to a shift in the timeline.', '9780316468459', 'erasedvol3_front.jpg', 'erasedvol3_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (48, 'Erased Volume 4', 9.99, 'Satoru wakes up to 15 years later, with many gaps in his memory. He is struggling with physical rehabilitation in the hospital, and encounters familiar people. As his memories return, he must prepare to reveal the truth behind the murders from 15 years ago.', '9780316468466', 'erasedvol4_front.jpg', 'erasedvol4_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (49, 'Powerless', 12.00, 'Powerless follows Paedyn Gray, living in the kingdom of Ilya, who is a thief hardly surviving in the slums. Her life changes dramatically when she unexpectedly saves Prince Kai Azer from death. Because she saved his life, she is thrown into the Purging Trials, a competition to showcase the powers and skills of the Elites. Will she survive the challenge?', '9781665954891', 'powerless_front.jpg', 'powerless_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (50, 'Powerful', 7.99, 'Powerful follows Adena, Paedyns best friend from Powerless. She is left alone after Paedyn was selected for the Purging Trials. While struggling on her own, she meets Makoto, an Elite, and form an alliance. Adena helps Mak with her sewing skills, and Mak helps Adena see Paedyn before the trials end.', '9781665981835', 'powerful_front.jpg', 'powerful_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (51, 'Reckless', 13.00, 'Reckless continues the plot of Powerless. After the trials and events that occured, Paedyn is a fugitive on the run, and the task of bringing her in falls on Kai, who has grown feelings for Paedyn.', '9781665955430', 'reckless_front.jpg', 'reckless_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (52, 'Fearless', 13.00, 'Fearless continues from the events in Reckless, and Paedyn is forced to return to the kingdom as a prisoner. Rather than being sentenced to death, the new king, Kitt Azer, brother of Kai, proposes marriage to Paedyn. He intends to use this marriage to bridge the divide between the Ordinaries and Elites of the kingdom.', '9781665955461', 'fearless_front.jpg', 'fearless_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (54, 'Legendary', 5.99, 'Legendary follows Donatella Dragna, the sister from Caraval, who in order to enter the game last year, must pay off a massive dept. In order to do so, she makes a deal to enter the new Caraval game that takes place in Valenda. This one is much more dangerous than the last, and in order to save herself, she must win and uncover the Legends secret.', '9781250095329', 'legendary_front.jpg', 'legendary_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (55, 'Finale', 5.99, 'Finale follows both Scarlett and Tella where they must make difficult choices to survive, as the games have become reality.', '9781250157683', 'finale_front.jpg', 'finale_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (56, 'Handmaids Tale', 4.00, 'Handmaids Tale follows the handmaid Offred, named after the commander she serves, who lives a highly restricted life. Women are not allowed to read, write, or own property in this new society created because most people have become infertile. Fertile women were round up and re-educated as handmaids and forced to bear children for the elites.', '9780547345666', 'handmaidstale_front.jpg', 'handmaidstale_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (57, 'Harry Potter and the Sorcerers Stone', 6.99, 'Harry Potter has spent twn years living in a cupboard under the stairs with his neglectful aunt and uncle. His life is changed when a giant, Hagrid, delivers an invitation to Hogwarts School of Witchcraft and Wizardry. He learns that his parents did not die in a car crash as he was told, but they were killed by a dark wizard. At Hogwarts he makes many friends that help him with a series of events to protect the Sorcerers Stone from falling into the wrong hands.', '9781781100486', 'harrypotter1_front.jpg', 'harrypotter1_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (58, 'Harry Potter and the Chamber of Secrets', 6.99, 'Harry Potter is home for the summer after his first year at Hogwarts. Before the second year begins, he meets Dobby the house-elf who warns him not to go back to Hogwarts or terrible things will happen. He goes back for his second year anyway, and everyone is scared, as a message written in blood says that the Chamber of Secrets has been opened. According to legend, a monster lives in the chamber that can only be controlled by the heir of Slytherin. Students are being found paralyzed, and Harry and his friends try to get into the chamber to stop the monster.', '9781781100509', 'harrypotter2_front.jpg', 'harrypotter2_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (59, 'Harry Potter and the Prisoner of Azkaban', 6.99, 'Harry Potter begins his third year at Hogwarts and everyone is on edge, as a mass murderer, Sirius Black is on the loose. The Ministry of Magic have stationed soul sucking guards at every entrance of the school, and they have a different effect of Harry, and therefore seeks help from Remus Lupin to learn to defend himself.', '9781781100516', 'harrypotter3_front.jpg', 'harrypotter3_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (60, 'Harry Potter and the Goblet of Fire', 7.99, 'Harry Potter begins his fourth year at Hogwarts and is to compete in the dangerous Triwizard Tournament. This is a competition between other magic schools. Only students seventeen and older are allowed to enter but the Goblet of Fire lists Harry as the fourth. As Harry struggles with the challenges, secrets are revealed about how he was put into the tournament.', '9781781100523', 'harrypotter4_front.jpg', 'harrypotter4_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (61, 'Harry Potter and the Order of the Phoenix', 8.99, 'Harry Potter joins the Order of the Phoenix, a secret society to oppose Voldemort. The Ministry of Magic is using its influence to convince people that Harry and Dumbledore are liars and Voldemort has not returned', '9781781100530', 'harrypotter5_front.jpg', 'harrypotter5_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (62, 'Harry Potter and the Half-Blood Prince', 8.99, 'Harry Potter is getting private lessons in history from Dumbledore as Hogwarts is no longer a safe place to be. War has broken out in the wizarding world. Harry finds an old potions book belonging to the Half-Blood Prince, that teaches him many, some dangerous spells.', '9781781100547', 'harrypotter6_front.jpg', 'harrypotter6_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (63, 'Harry Potter and the Deathly Hallows', 8.99, 'Harry Potter does not return to Hogwarts for his seventh year, as they instead go into hiding, as the wizarding world has fallen to Voldemort and his Death Eaters. They travel to discover the legend of the Deathly Hallows where Harry must face a difficult choice.', '9781781102435', 'harrypotter7_front.jpg', 'harrypotter7_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (64, 'Her Soul To Take', 11.99, 'Her Soul to Take follows Rae Fitzgerald, a college student with a fascination for the supernatural. After going back to Abaddon, her hometown, she accidently summons a demon, Leon, while trying to get views for her social media channel. Rae ends up a target for a cult sacrifice, and is desperate for protection, so she seeks a deal with Leon, her soul for protection.', '9781496752895', 'hersoultotake_front.jpg', 'hersoultotake_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (65, 'Her Soul For Revenge', 11.99, 'Her Soul For Revenge follows Juniper, the woman who was left for dead by the cult in Her Soul to Take. After years of training, she returns to Abaddon for revenge against the cult. To get this revenge, she summons Vane, a demon, and offers him her soul for his help.', '9788383213118', 'hersoulforrevenge_front.jpg', 'hersoulforrevenge_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (66, 'Soul Of A Witch', 11.99, 'Soul of a Witch follows Marisol, a witch who has been studying witchcraft in secret. She is able to see visions of the future, and she can see the cult ending the world with the ultimate ritual. In order to stop the cult, she teams up with Everest, a powerful demon who is struggling with feelings of humanity.', '9781496752918', 'soulofawitch_front.jpg', 'soulofawitch_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (67, 'How Music Works', 3.00, 'How Music Works shows how music is a product of its physical, social, and technological context, not just an expression of inner emotion.', '9780804188937', 'howmusicworks_front.jpg', 'howmusicworks_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (68, 'In Cold Blood', 6.00, 'In Cold Blood alternates between the perspectives of the victims, Herbert Clutter and his family, and their killers, Perry Smith and Dick Hickock. It follows the planning of the robbery, the night of the murders, their flight to Mexico and their capture.', '9780679745587', 'incoldblood_front.jpg', 'incoldblood_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (69, 'John Adams', 3.00, 'John Adams is a biography about the life of the second US president John Adams. He begins as a lawyer in Massachusetts and eventually becomes a Founding Father and president.', '9780743223133', 'johnadams_front.jpg', 'johnadams_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (70, 'King of Wrath', 5.00, 'King of Wrath follows Dante Russo, a CEO billionaire, and Vivian Lau, the daughter of a CEO of a jewelery company. When Dante is blackmailed into an engagement with Vivian by her father, he is forced to navigate this unwanted arrangement. The line between the fake show they put on for the public, and real affection begins to blur, as the secrets that brought them together begin to reveal themselves.', '9781728289724', 'kingofwrath_front.jpg', 'kingofwrath_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (71, 'King of Pride', 5.00, 'King of Pride follows Kai Young, a billionaire, and Isabella Valencia, a bartender. In order for Kai to secure his position as the next CEO of the family company, he must keep a spotless reputation. He meets Isabella, as she is the bartender at his regular spot. Despite Isabellas job and Kais reputation being at stake, the two find themselves in a forbidden flirtation.', '9781728289731', 'kingofpride_front.jpg', 'kingofpride_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (72, 'King of Greed', 5.00, 'King of Greed follows Dominic Davenport, a self-made CEO billionaire, and Alessandra Davenport, his wife. Dominic has achieved everything he has every wanted, but in doing so he has neglected the one person there from the start, Alessandra. She reaches her breaking point, leaves him, and struggles to build her new life. Desperate to win Alessandra back, Dominic does everything to show her that he has changed.', '9781728289748', 'kingofgreed_front.jpg', 'kingofgreed_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (73, 'King of Sloth', 6.00, 'King of Sloth follows Xavier Castillo, a billionaire and heir to his family empire, and Sloane Kensington, a high-achieving publicist. The two are exact opposites, Xavier has no interest in work or taking over the company, and prefers to chase pleasure, while Sloane is driven and loves her job. She is tasked with cleaning up Xaviers image and turning him into the CEO his father wants him to be. She thinks he is shallow and infuriating, and Xavier wants the one woman who is immune to his charms, Sloane.', '9781728289755', 'kingofsloth_front.jpg', 'kingofsloth_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (74, 'King of Envy', 6.00, 'King of Envy follows Vuk Markovic, a billionaire who rarely speaks, and Ayana Kidane, a world famous supermodel. Vuk has spent years secretly obsessing over Ayana, and Ayana is engaged to Jordan Ford, who is Vuks oldest and closest friend. He is supossed to be the best man and is devistated, however he does not know that the engagement is a setup. It is a buisness arrangement where Jordan gets his inheritance and Ayana gets the money to buy her way out of her modeling contract. As the wedding date appeoaches, he battles between his loyalty for his friend and his desire for Ayana.', '9781728289762', 'kingofenvy_front.jpg', 'kingofenvy_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (75, 'Lightlark', 6.99, 'Lightlark follows Isla Crown, the ruler of the Wildling realm. Once every century, the island of Lightlark appears for 100 days to host a deadly competition. This is hosted in order to breat the curses placed on the six world realms 500 years ago. The ruler of each realm must try to breat the curses during this competition called the Centennial.', '9781419760877', 'lightlark_front.jpg', 'lightlark_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (76, 'Nightbane', 6.99, 'Nightbane follows after the events in Lightlark. The fallout of the Centennial games is brutal, with Isla being the ruler of two realms after breaking the curse. Grim threatens everyone on Lightlark if he does not get what he wants, but Isla learns that her memory is the key to saving everyone, but as she regains her memories, there is far more revealed then she would have liked.', '9781419760914', 'nightbane_front.jpg', 'nightbane_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (77, 'Skyshade', 6.99, 'Skyshade continues after the events in  Nightbane. Isla goes with Grim to the Nightshade realm where she learns that they are being distroyed by powerful storms. Isla must find a way to change her fate and the fate of the world.', '9781419773785', 'skyshade_front.jpg', 'skyshade_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (78, 'Lights Out', 7.00, 'Lights Out follows Aly Cappellucci, a trauma nurse who obsesses over masked men on social media. She often comments on her favorite masked account called the faceless amn, whos real name is Josh Hammond. After a rough shift at the hospital, she leaves a comment asking the masked man to break into her house, and to her shock, he does.', '9781638932239', 'lightsout_front.jpg', 'lightsout_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (79, 'The Martian', 9.99, 'The Martian follows Mark Watney, an astronaut who has taken a mission to Mars. When a dust storm forces the crew to evacuate, he is struck by debris and presumed dead. The crew is forced to leave him behind, but Mark lived and wakes up alone with no way to contace Earth. He only has enough supplies to last a few months, but he struggles to use his skills to grow food, and establish communication before his supplies are gone.', '9780553418026', 'martian_front.jpg', 'martian_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (80, 'Mindhunter', 4.99, 'Mindhunter was written by John E Douglas and Mark Olshaker. John is a retired Special Agent who interviewed incarcerated killers to understand their psychology. This shows the behind-the-scenes of high-profile investigations from people like Ted Bundy.', '9781501191961', 'mindhunter_front.jpg', 'mindhunter_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (81, 'Once Upon A Broken Heart', 8.00, 'Once Upon A Broken Heart follows Evangeline Fox who has always believed in true love. This view shattered when the love of her life Luc is about to marry her stepsister. Thinking that he was cursed into this marriage, she seeks a bargian with Jacks, the Prince of Hearts, who in exchange for stopping the wedding asks for three kisses at the time and place of his choosing. What she did not realize was that Jacks has far more planned for her than she thought.', '9781250268402', 'onceuponabrokenheart_front.jpg', 'onceuponabrokenheart_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (82, 'The Ballad of Never After', 8.00, 'The Ballad of Never After picks up immediately after the events in Once Upon A Broken Heart. Evangeline vows she will not trust Jacks again, however when she is cursed to slowly turn to stone, she is forced into an alliance with him.', '9781250268433', 'theballadofneverafter_front.jpg', 'theballadofneverafter_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (83, 'The Power of Habit', 6.99, 'The Power of Habit is a deep dive into why we do what we do and how to change those patterns to improve our lives. It deeply talks about the habit loop and how to change from this.', '9780679603856', 'powerofhabit_front.jpg', 'powerofhabit_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (84, 'The Psychology of Money', 6.99, 'The Psychology of Money is a collection of 19 short stories that explore the different ways people think about money. It discusses how financial success has less to do with intelligence and more to do with behavior.', '9781804090114', 'psychologyofmoney_front.jpg', 'psychologyofmoney_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (85, 'Quicksilver', 12.00, 'Quicksilver follows Saeris Fane, a thief living in a desert city where water is strictly rationed. After stealing a golden gauntlet to save her brother, she accidently triggers a portal to the Fae realm, where the Fae King wants to use her alchemist powers to win the war against the vampires, however, Saeris wants to find her way home.', '9781538774199', 'quicksilver_front.jpg', 'quicksilver_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (86, 'Ready Player One', 3.00, 'Ready Player One follows Wade Watts, a teenager living in a trailer home. Wade is obsessed with finding the easter egg in the OASIS. The creator of OASIS said that whoever finds it will inherit his fortune and take control over the virtual world.', '9780307887443', 'readyplayerone_front.jpg', 'readyplayerone_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (87, 'The Silent Patient', 5.00, 'The Silent Patient follows Alicia Berenson, a famous painter who shot her husband, and refused to speak at all afterwards. Theo Faber is a criminal psychotherapist who gets on this case and is convinced he can get her to talk. He gets a job at The Grove, the forensic unit Alicia is at, and begins to dig into her past to find the answers.', '9781250301703', 'silentpatient_front.jpg', 'silentpatient_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (88, 'Steve Jobs', 3.99, 'Steve Jobs is a biography that was published just after Steve died. It goes through his upbringing as an adopted child to how he became the CEO of Apple.', '9781451648539', 'stevejobs_front.jpg', 'stevejobs_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (90, 'The Last Letter', 15.99, 'The Last Letter follows Beckett Gentry, an elite special operations soldier, who while deployed develops an anonymous pen pal relationship with Ella MacKenzie, the younger sister of his best friend Ryan.', '9781640635333', 'thelastletter_front.jpg', 'thelastletter_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (91, 'And Then There Were None', 6.99, 'And Then There Were None follows ten strangers that were each invited to a secluded mansion on an island. Each person has a dark secret, but upon arrival, all the guests are publically accused of having committed unpunished murders.', '9780062073471', 'thentherewerenone_front.jpg', 'thentherewerenone_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (92, 'The Silk Roads', 5.00, 'The Silk Roads moves through roads that define different eras in history. The early roads being about the first empires of Rome and Persia.', '9781101912379', 'thesilkroads_front.jpg', 'thesilkroads_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (93, 'Tokyo Ghoul Volume 1', 8.00, 'Tokyo Ghoul follows Ken Kaneki, who goes on a date with Rize, not knowing she is a ghoul, which is a creature that eats human flesh. Rize is killed in an accident that leaves Kaneki in critical condition. The organs from Rize are transplanted into him, turning him into a half-ghoul hybrid.', '9781421580364', 'tokyoghoul1_front.jpg', 'tokyoghoul1_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (94, 'Tokyo Ghoul Volume 2', 8.00, 'Kaneki, desperate to avoid eating human flesh, finds refuge at Anteiku, a coffee shop run by ghouls that help there kind pass as human. He begins to learn how to suppress his hunger and the way of the ghouls, when the Commission of Counter Ghoul begin hunting for ghouls in the 20th ward.', '9781421580371', 'tokyoghoul2_front.jpg', 'tokyoghoul2_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (95, 'Tokyo Ghoul Volume 3', 8.00, 'Kaneki and Touka are forced into conflict with the CCG investigators to protect their friends. They learn about a new weapon called the Quinque, which is crafted from ghoul organs.', '9781421580388', 'tokyoghoul3_front.jpg', 'tokyoghoul3_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (96, 'Tokyo Ghoul Volume 4', 8.00, 'After the battle with the CCG, Kaneki encounters Shuu Tsukiyama who lures him into a high-society ghoul restaurant where he is intended to be the main course.', '9781421580395', 'tokyoghoul4_front.jpg', 'tokyoghoul4_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (97, 'Tokyo Ghoul Volume 5', 8.00, 'After he escaped the dinner party, we learn about the Aogiri Tree, a militant ghoul organization seeking to take over Tokyo. Kaneki struggles to balance his human life with his ghoul one.', '9781421580401', 'tokyoghoul5_front.jpg', 'tokyoghoul5_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (98, 'Tokyo Ghoul Volume 6', 8.00, 'Aogiri Tree launches a violent operation to kidnap Kaneki. This operation is led by Jason and Toukas estranged brother Ayato. Kaneki is taken to a secret hideout where he is tested on physically and psychologically.', '9781421580418', 'tokyoghoul6_front.jpg', 'tokyoghoul6_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (99, 'The Unbeatable Squirrel Girl Volume 1', 5.00, 'The Unbeatable Squirrel Girl follows Doreen Green, a fourteen year old girl who was born with the powers of a squirrel.', '9781484788523', 'unbeatablesquirrelgirl_front.jpg', 'unbeatablesquirrelgirl_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (100, 'The Unbeatable Squirrel Girl Volume 2', 5.00, 'Doreen continues her adventures as a squirrel girl.', '9781368011266', 'unbeatablesquirrelgirl2_front.jpg', 'unbeatablesquirrelgirl2_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (101, 'V For Vendetta', 8.00, 'V For Vendetta follows a masked vigilante known as V who aims to spark a grassroots revolution. V saves a woman named Evey Hammond from the secret police and brings her to his underground world to free her from the governments psychological grip it has on its people.', '9781779511195', 'vforvendetta_front.jpg', 'vforvendetta_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (102, 'Watchmen', 8.00, 'Watchmen begins with the murder of Edward Blake, a government sponsored hero known as The Comedian. While vigilante heros are outlawed, this draws out Rorschach, an illegal vigilante. He believes there is a killer targeting former heros.', '9781401238964', 'watchmen_front.jpg', 'watchmen_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (20, 'When the Moon Hatched', 12.99, 'When the Moon Hatched follows Raeve, an assassin, who is captured by a bounty hunter and is saved by Kaan Vaegor, a king. As she seeks revenge, she learns about her past.', '-63414827', 'whenthemoonhatched_front.jpg', 'whenthemoonhatched_back.jpg', 10);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (89, 'The Stranger Beside Me', 2.99, 'The Stranger Beside Me follows the author, Ann Rule, a former police officer, who met and befriended a man named Ted Bundy. The two volunteered at a suicide crisis hotline in Seattle. Ann was hired to write a book about a series of unsolved murders of young women in the Pacific Northwest. Ann slowle realizes that the colleague she knew was not the person he seemed to be, he is the brutal killer she has been tracking.', '9780393868494', 'strangerbesideme_front.jpg', 'strangerbesideme_back.jpg', 9);
INSERT INTO public.books (book_id, title, price, summary, isbn, front_cover, back_cover, quantity) VALUES (53, 'Caraval', 5.99, 'Caraval follows Scarlett Dragna, the daughter of a controlling father, who has lived on a small island her whole life. She has written many letters to the orchestrator of a magical performance that happens once a year called Caraval. As she is facing an unwanted arranged marriage, she receives an invitation to participate in Caraval. With help, she is able to sneak away from the island to go, however when they arrive, her sister is kidnapped, and the first person to find her, wins the game.', '9781250095268', 'caraval_front.jpg', 'caraval_back.jpg', 9);


--
-- TOC entry 5046 (class 0 OID 16443)
-- Dependencies: 226
-- Data for Name: book_authors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.book_authors (book_id, author_id) VALUES (1, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (2, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (3, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (4, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (5, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (6, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (7, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (8, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (9, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (10, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (11, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (12, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (13, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (14, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (15, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (16, 1);
INSERT INTO public.book_authors (book_id, author_id) VALUES (17, 2);
INSERT INTO public.book_authors (book_id, author_id) VALUES (18, 2);
INSERT INTO public.book_authors (book_id, author_id) VALUES (19, 2);
INSERT INTO public.book_authors (book_id, author_id) VALUES (20, 52);
INSERT INTO public.book_authors (book_id, author_id) VALUES (21, 13);
INSERT INTO public.book_authors (book_id, author_id) VALUES (22, 7);
INSERT INTO public.book_authors (book_id, author_id) VALUES (23, 14);
INSERT INTO public.book_authors (book_id, author_id) VALUES (24, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (25, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (26, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (27, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (28, 5);
INSERT INTO public.book_authors (book_id, author_id) VALUES (29, 5);
INSERT INTO public.book_authors (book_id, author_id) VALUES (30, 16);
INSERT INTO public.book_authors (book_id, author_id) VALUES (31, 15);
INSERT INTO public.book_authors (book_id, author_id) VALUES (32, 17);
INSERT INTO public.book_authors (book_id, author_id) VALUES (33, 18);
INSERT INTO public.book_authors (book_id, author_id) VALUES (34, 19);
INSERT INTO public.book_authors (book_id, author_id) VALUES (35, 20);
INSERT INTO public.book_authors (book_id, author_id) VALUES (36, 21);
INSERT INTO public.book_authors (book_id, author_id) VALUES (37, 22);
INSERT INTO public.book_authors (book_id, author_id) VALUES (38, 23);
INSERT INTO public.book_authors (book_id, author_id) VALUES (39, 24);
INSERT INTO public.book_authors (book_id, author_id) VALUES (40, 25);
INSERT INTO public.book_authors (book_id, author_id) VALUES (41, 25);
INSERT INTO public.book_authors (book_id, author_id) VALUES (42, 26);
INSERT INTO public.book_authors (book_id, author_id) VALUES (43, 26);
INSERT INTO public.book_authors (book_id, author_id) VALUES (44, 27);
INSERT INTO public.book_authors (book_id, author_id) VALUES (45, 28);
INSERT INTO public.book_authors (book_id, author_id) VALUES (46, 28);
INSERT INTO public.book_authors (book_id, author_id) VALUES (47, 28);
INSERT INTO public.book_authors (book_id, author_id) VALUES (48, 28);
INSERT INTO public.book_authors (book_id, author_id) VALUES (49, 12);
INSERT INTO public.book_authors (book_id, author_id) VALUES (50, 12);
INSERT INTO public.book_authors (book_id, author_id) VALUES (51, 12);
INSERT INTO public.book_authors (book_id, author_id) VALUES (52, 12);
INSERT INTO public.book_authors (book_id, author_id) VALUES (53, 10);
INSERT INTO public.book_authors (book_id, author_id) VALUES (54, 10);
INSERT INTO public.book_authors (book_id, author_id) VALUES (55, 10);
INSERT INTO public.book_authors (book_id, author_id) VALUES (56, 29);
INSERT INTO public.book_authors (book_id, author_id) VALUES (57, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (58, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (59, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (60, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (61, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (62, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (63, 6);
INSERT INTO public.book_authors (book_id, author_id) VALUES (64, 30);
INSERT INTO public.book_authors (book_id, author_id) VALUES (65, 30);
INSERT INTO public.book_authors (book_id, author_id) VALUES (66, 30);
INSERT INTO public.book_authors (book_id, author_id) VALUES (67, 31);
INSERT INTO public.book_authors (book_id, author_id) VALUES (68, 32);
INSERT INTO public.book_authors (book_id, author_id) VALUES (69, 33);
INSERT INTO public.book_authors (book_id, author_id) VALUES (70, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (71, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (72, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (73, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (74, 3);
INSERT INTO public.book_authors (book_id, author_id) VALUES (75, 4);
INSERT INTO public.book_authors (book_id, author_id) VALUES (76, 4);
INSERT INTO public.book_authors (book_id, author_id) VALUES (77, 4);
INSERT INTO public.book_authors (book_id, author_id) VALUES (78, 34);
INSERT INTO public.book_authors (book_id, author_id) VALUES (79, 35);
INSERT INTO public.book_authors (book_id, author_id) VALUES (80, 36);
INSERT INTO public.book_authors (book_id, author_id) VALUES (81, 10);
INSERT INTO public.book_authors (book_id, author_id) VALUES (82, 10);
INSERT INTO public.book_authors (book_id, author_id) VALUES (83, 38);
INSERT INTO public.book_authors (book_id, author_id) VALUES (84, 39);
INSERT INTO public.book_authors (book_id, author_id) VALUES (85, 9);
INSERT INTO public.book_authors (book_id, author_id) VALUES (86, 40);
INSERT INTO public.book_authors (book_id, author_id) VALUES (87, 41);
INSERT INTO public.book_authors (book_id, author_id) VALUES (88, 42);
INSERT INTO public.book_authors (book_id, author_id) VALUES (89, 43);
INSERT INTO public.book_authors (book_id, author_id) VALUES (90, 2);
INSERT INTO public.book_authors (book_id, author_id) VALUES (91, 44);
INSERT INTO public.book_authors (book_id, author_id) VALUES (92, 45);
INSERT INTO public.book_authors (book_id, author_id) VALUES (93, 46);
INSERT INTO public.book_authors (book_id, author_id) VALUES (94, 46);
INSERT INTO public.book_authors (book_id, author_id) VALUES (95, 46);
INSERT INTO public.book_authors (book_id, author_id) VALUES (96, 46);
INSERT INTO public.book_authors (book_id, author_id) VALUES (97, 46);
INSERT INTO public.book_authors (book_id, author_id) VALUES (98, 46);
INSERT INTO public.book_authors (book_id, author_id) VALUES (99, 47);
INSERT INTO public.book_authors (book_id, author_id) VALUES (99, 48);
INSERT INTO public.book_authors (book_id, author_id) VALUES (100, 47);
INSERT INTO public.book_authors (book_id, author_id) VALUES (100, 48);
INSERT INTO public.book_authors (book_id, author_id) VALUES (101, 49);
INSERT INTO public.book_authors (book_id, author_id) VALUES (101, 50);
INSERT INTO public.book_authors (book_id, author_id) VALUES (102, 49);
INSERT INTO public.book_authors (book_id, author_id) VALUES (102, 51);


--
-- TOC entry 5047 (class 0 OID 16460)
-- Dependencies: 227
-- Data for Name: book_genres; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.book_genres (book_id, genre_id) VALUES (1, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (1, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (1, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (2, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (2, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (2, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (3, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (3, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (3, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (4, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (4, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (4, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (5, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (5, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (5, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (6, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (6, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (6, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (6, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (7, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (7, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (7, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (7, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (8, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (8, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (8, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (8, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (9, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (9, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (9, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (9, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (10, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (10, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (10, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (10, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (11, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (11, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (11, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (11, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (12, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (12, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (12, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (12, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (13, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (13, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (13, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (13, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (14, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (14, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (14, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (15, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (15, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (15, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (16, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (16, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (16, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (17, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (17, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (17, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (18, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (18, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (18, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (19, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (19, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (19, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (20, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (20, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (20, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (21, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (21, 6);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (22, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (22, 6);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (23, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (23, 6);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (24, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (24, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (25, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (25, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (26, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (26, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (27, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (27, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (28, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (28, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (28, 9);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (29, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (29, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (29, 9);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (30, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (30, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (30, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (31, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (31, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (31, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (32, 12);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (33, 10);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (33, 11);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (33, 18);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (34, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (34, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (34, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (35, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (35, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (35, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (35, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (35, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (36, 4);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (36, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (37, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (37, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (37, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (37, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (38, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (38, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (39, 10);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (39, 17);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (39, 18);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (40, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (40, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (40, 14);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (41, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (41, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (41, 14);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (42, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (42, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (42, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (42, 19);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (43, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (43, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (43, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (43, 19);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (44, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (44, 4);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (44, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (45, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (46, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (47, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (48, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (49, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (49, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (49, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (49, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (50, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (50, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (50, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (50, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (51, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (51, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (51, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (51, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (52, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (52, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (52, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (52, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (53, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (53, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (53, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (53, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (53, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (54, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (54, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (54, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (54, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (54, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (55, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (55, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (55, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (55, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (55, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (56, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (56, 6);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (56, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (56, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (57, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (57, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (58, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (58, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (59, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (59, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (60, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (60, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (60, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (60, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (61, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (61, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (61, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (61, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (62, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (62, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (62, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (62, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (63, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (63, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (63, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (63, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (64, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (64, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (64, 19);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (65, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (65, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (65, 19);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (66, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (66, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (66, 19);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (67, 13);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (68, 17);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (68, 18);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (68, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (69, 11);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (69, 10);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (69, 18);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (70, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (70, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (71, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (71, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (72, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (72, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (73, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (73, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (74, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (74, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (75, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (75, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (75, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (75, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (76, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (76, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (76, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (76, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (77, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (77, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (77, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (77, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (78, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (78, 19);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (79, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (79, 4);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (79, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (80, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (80, 17);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (81, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (81, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (81, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (81, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (82, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (82, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (82, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (82, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (83, 12);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (84, 12);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (85, 1);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (85, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (85, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (86, 4);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (86, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (86, 6);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (86, 3);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (87, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (87, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (87, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (88, 11);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (88, 18);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (89, 11);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (89, 17);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (89, 18);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (90, 2);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (90, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (91, 5);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (91, 7);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (91, 8);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (92, 18);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (92, 10);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (93, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (94, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (95, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (96, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (97, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (98, 16);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (99, 15);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (100, 15);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (101, 15);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (101, 6);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (102, 15);
INSERT INTO public.book_genres (book_id, genre_id) VALUES (102, 6);


--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 222
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 52, true);


--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 219
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.books_book_id_seq', 102, true);


-- Completed on 2026-07-30 15:11:25

--
-- PostgreSQL database dump complete
--


