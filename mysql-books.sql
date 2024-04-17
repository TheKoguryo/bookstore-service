CREATE DATABASE bookstore;

--CREATE USER bookstore_user IDENTIFIED BY 'password';

use bookstore;
--grant all on bookstore.* to 'bookstore_user'@'%';

CREATE TABLE books (
    id              	INT AUTO_INCREMENT,
    title           	VARCHAR(250),
    authors         	VARCHAR(250),
    average_rating  	FLOAT,
    isbn            	VARCHAR(100),
    isbn13          	VARCHAR(100),
    language_code   	VARCHAR(100),
    num_pages       	INT,
    ratings_count   	INT,
    text_reviews_count  INT,
    publication_date    DATE,
    publisher       	VARCHAR(100),
    PRIMARY KEY(id)
);

INSERT INTO books VALUES (1, 'Harry Potter and the Half-Blood Prince (Harry Potter  #6)', 'J.K. Rowling/Mary GrandPré', 4.57, '0439785960', '9780439785969', 'eng', 652, 2095690, 27591, STR_TO_DATE('9/16/2006', '%m/%d/%Y'), 'Scholastic Inc.');
INSERT INTO books VALUES (2, 'Harry Potter and the Order of the Phoenix (Harry Potter  #5)', 'J.K. Rowling/Mary GrandPré', 4.49, '0439358078', '9780439358071', 'eng', 870, 2153167, 29221, STR_TO_DATE('9/1/2004', '%m/%d/%Y'), 'Scholastic Inc.');
INSERT INTO books VALUES (4, 'Harry Potter and the Chamber of Secrets (Harry Potter  #2)', 'J.K. Rowling', 4.42, '0439554896', '9780439554893', 'eng', 352, 6333, 244, STR_TO_DATE('11/1/2003', '%m/%d/%Y'), 'Scholastic');
INSERT INTO books VALUES (5, 'Harry Potter and the Prisoner of Azkaban (Harry Potter  #3)', 'J.K. Rowling/Mary GrandPré', 4.56, '043965548X', '9780439655484', 'eng', 435, 2339585, 36325, STR_TO_DATE('5/1/2004', '%m/%d/%Y'), 'Scholastic Inc.');
INSERT INTO books VALUES (8, 'Harry Potter Boxed Set  Books 1-5 (Harry Potter  #1-5)', 'J.K. Rowling/Mary GrandPré', 4.78, '0439682584', '9780439682589', 'eng', 2690, 41428, 164, STR_TO_DATE('9/13/2004', '%m/%d/%Y'), 'Scholastic');
INSERT INTO books VALUES (9, 'Unauthorized Harry Potter Book Seven News: "Half-Blood Prince" Analysis and Speculation', 'W. Frederick Zimmerman', 3.74, '0976540606', '9780976540601', 'en-US', 152, 19, 1, STR_TO_DATE('4/26/2005', '%m/%d/%Y'), 'Nimble Books');
INSERT INTO books VALUES (10, 'Harry Potter Collection (Harry Potter  #1-6)', 'J.K. Rowling', 4.73, '0439827604', '9780439827607', 'eng', 3342, 28242, 808, STR_TO_DATE('9/12/2005', '%m/%d/%Y'), 'Scholastic');
INSERT INTO books VALUES (12, 'The Ultimate Hitchhiker\'s Guide: Five Complete Novels and One Story (Hitchhiker\'s Guide to the Galaxy  #1-5)', 'Douglas Adams', 4.38, '0517226952', '9780517226957', 'eng', 815, 3628, 254, STR_TO_DATE('11/1/2005', '%m/%d/%Y'), 'Gramercy Books');
INSERT INTO books VALUES (13, 'The Ultimate Hitchhiker\'s Guide to the Galaxy (Hitchhiker\'s Guide to the Galaxy  #1-5)', 'Douglas Adams', 4.38, '0345453743', '9780345453747', 'eng', 815, 249558, 4080, STR_TO_DATE('4/30/2002', '%m/%d/%Y'), 'Del Rey Books');
INSERT INTO books VALUES (14, 'The Hitchhiker\'s Guide to the Galaxy (Hitchhiker\'s Guide to the Galaxy  #1)', 'Douglas Adams', 4.22, '1400052920', '9781400052929', 'eng', 215, 4930, 460, STR_TO_DATE('8/3/2004', '%m/%d/%Y'), 'Crown');
INSERT INTO books VALUES (16, 'The Hitchhiker\'s Guide to the Galaxy (Hitchhiker\'s Guide to the Galaxy  #1)', 'Douglas Adams/Stephen Fry', 4.22, '0739322206', '9780739322208', 'eng', 6, 1266, 253, STR_TO_DATE('3/23/2005', '%m/%d/%Y'), 'Random House Audio');
INSERT INTO books VALUES (18, 'The Ultimate Hitchhiker\'s Guide (Hitchhiker\'s Guide to the Galaxy  #1-5)', 'Douglas Adams', 4.38, '0517149257', '9780517149256', 'eng', 815, 2877, 195, STR_TO_DATE('1/17/1996', '%m/%d/%Y'), 'Wings Books');
INSERT INTO books VALUES (21, 'A Short History of Nearly Everything', 'Bill Bryson', 4.21, '076790818X', '9780767908184', 'eng', 544, 248558, 9396, STR_TO_DATE('9/14/2004', '%m/%d/%Y'), 'Broadway Books');
INSERT INTO books VALUES (22, 'Bill Bryson\'s African Diary', 'Bill Bryson', 3.44, '0767915062', '9780767915069', 'eng', 55, 7270, 499, STR_TO_DATE('12/3/2002', '%m/%d/%Y'), 'Broadway Books');
INSERT INTO books VALUES (23, 'Bryson\'s Dictionary of Troublesome Words: A Writer\'s Guide to Getting It Right', 'Bill Bryson', 3.87, '0767910435', '9780767910439', 'eng', 256, 2088, 131, STR_TO_DATE('9/14/2004', '%m/%d/%Y'), 'Broadway Books');
INSERT INTO books VALUES (24, 'In a Sunburned Country', 'Bill Bryson', 4.07, '0767903862', '9780767903868', 'eng', 335, 72451, 4245, STR_TO_DATE('5/15/2001', '%m/%d/%Y'), 'Broadway Books');
INSERT INTO books VALUES (25, 'I\'m a Stranger Here Myself: Notes on Returning to America After Twenty Years Away', 'Bill Bryson', 3.90, '076790382X', '9780767903820', 'eng', 304, 49240, 2211, STR_TO_DATE('6/28/2000', '%m/%d/%Y'), 'Broadway Books');
INSERT INTO books VALUES (26, 'The Lost Continent: Travels in Small Town America', 'Bill Bryson', 3.83, '0060920084', '9780060920081', 'eng', 299, 45712, 2257, STR_TO_DATE('8/28/1990', '%m/%d/%Y'), 'William Morrow Paperbacks');
INSERT INTO books VALUES (27, 'Neither Here nor There: Travels in Europe', 'Bill Bryson', 3.86, '0380713802', '9780380713806', 'eng', 254, 48701, 2238, STR_TO_DATE('3/28/1993', '%m/%d/%Y'), 'William Morrow Paperbacks');
INSERT INTO books VALUES (28, 'Notes from a Small Island', 'Bill Bryson', 3.91, '0380727501', '9780380727506', 'eng', 324, 80609, 3301, STR_TO_DATE('5/28/1997', '%m/%d/%Y'), 'William Morrow Paperbacks');
INSERT INTO books VALUES (29, 'The Mother Tongue: English and How It Got That Way', 'Bill Bryson', 3.93, '0380715430', '9780380715435', 'eng', 270, 28489, 2085, STR_TO_DATE('9/28/1991', '%m/%d/%Y'), 'William Morrow Paperbacks');
INSERT INTO books VALUES (30, 'J.R.R. Tolkien 4-Book Boxed Set: The Hobbit and The Lord of the Rings', 'J.R.R. Tolkien', 4.59, '0345538374', '9780345538376', 'eng', 1728, 101233, 1550, STR_TO_DATE('9/25/2012', '%m/%d/%Y'), 'Ballantine Books');
INSERT INTO books VALUES (31, 'The Lord of the Rings (The Lord of the Rings  #1-3)', 'J.R.R. Tolkien', 4.50, '0618517650', '9780618517657', 'eng', 1184, 1710, 91, STR_TO_DATE('10/21/2004', '%m/%d/%Y'), 'Houghton Mifflin Harcourt');
INSERT INTO books VALUES (34, 'The Fellowship of the Ring (The Lord of the Rings  #1)', 'J.R.R. Tolkien', 4.36, '0618346252', '9780618346257', 'eng', 398, 2128944, 13670, STR_TO_DATE('9/5/2003', '%m/%d/%Y'), 'Houghton Mifflin Harcourt');
INSERT INTO books VALUES (35, 'The Lord of the Rings (The Lord of the Rings  #1-3)', 'J.R.R. Tolkien/Alan  Lee', 4.50, '0618260587', '9780618260584', 'en-US', 1216, 1618, 140, STR_TO_DATE('10/1/2002', '%m/%d/%Y'), 'Houghton Mifflin Harcourt');
INSERT INTO books VALUES (36, 'The Lord of the Rings: Weapons and Warfare', 'Chris   Smith/Christopher  Lee/Richard Taylor', 4.53, '0618391002', '9780618391004', 'eng', 218, 19822, 46, STR_TO_DATE('11/5/2003', '%m/%d/%Y'), 'Houghton Mifflin Harcourt');
INSERT INTO books VALUES (37, 'The Lord of the Rings: Complete Visual Companion', 'Jude Fisher', 4.50, '0618510826', '9780618510825', 'eng', 224, 359, 6, STR_TO_DATE('11/15/2004', '%m/%d/%Y'), 'Houghton Mifflin Harcourt');
INSERT INTO books VALUES (45, 'Agile Web Development with Rails: A Pragmatic Guide', 'Dave Thomas/David Heinemeier Hansson/Leon Breedt/Mike Clark/Thomas  Fuchs/Andreas  Schwarz', 3.84, '097669400X', '9780976694007', 'eng', 558, 1430, 59, STR_TO_DATE('7/28/2005', '%m/%d/%Y'), 'Pragmatic Bookshelf');
INSERT INTO books VALUES (50, 'Hatchet (Brian\'s Saga  #1)', 'Gary Paulsen', 3.72, '0689840926', '9780689840920', 'eng', 208, 270244, 12017, STR_TO_DATE('4/1/2000', '%m/%d/%Y'), 'Atheneum Books for Young Readers: Richard Jackson Books');
INSERT INTO books VALUES (51, 'Hatchet: A Guide for Using "Hatchet" in the Classroom', 'Donna Ickes/Edward Sciranko/Keith Vasconcelles', 4.00, '1557344493', '9781557344496', 'eng', 48, 36, 2, STR_TO_DATE('8/28/1994', '%m/%d/%Y'), 'Teacher Created Resources');
INSERT INTO books VALUES (53, 'Guts: The True Stories behind Hatchet and the Brian Books', 'Gary Paulsen', 3.88, '0385326505', '9780385326506', 'eng', 144, 2067, 334, STR_TO_DATE('1/23/2001', '%m/%d/%Y'), 'Delacorte Press');
INSERT INTO books VALUES (54, 'Molly Hatchet - 5 of the Best', 'Molly Hatchet', 4.33, '1575606240', '9781575606248', 'eng', 56, 6, 0, STR_TO_DATE('6/10/2003', '%m/%d/%Y'), 'Cherry Lane Music Company');
INSERT INTO books VALUES (55, 'Hatchet Jobs: Writings on Contemporary Fiction', 'Dale Peck', 3.45, '1595580271', '9781595580276', 'en-US', 228, 99, 16, STR_TO_DATE('11/1/2005', '%m/%d/%Y'), 'The New Press');
INSERT INTO books VALUES (57, 'A Changeling for All Seasons (Changeling Seasons #1)', 'Angela Knight/Sahara Kelly/Judy Mays/Marteeka Karland/Kate Douglas/Shelby Morgen/Lacey Savage/Kate Hill/Willa Okati', 3.76, '1595962808', '9781595962805', 'eng', 304, 167, 4, STR_TO_DATE('11/1/2005', '%m/%d/%Y'), 'Changeling Press');
INSERT INTO books VALUES (58, 'Changeling (Changeling  #1)', 'Delia Sherman', 3.60, '0670059676', '9780670059676', 'eng', 256, 978, 111, STR_TO_DATE('8/17/2006', '%m/%d/%Y'), 'Viking Juvenile');
INSERT INTO books VALUES (59, 'The Changeling Sea', 'Patricia A. McKillip', 4.06, '0141312629', '9780141312620', 'eng', 137, 4454, 302, STR_TO_DATE('4/14/2003', '%m/%d/%Y'), 'Firebird');
INSERT INTO books VALUES (61, 'The Changeling', 'Zilpha Keatley Snyder', 4.17, '0595321801', '9780595321803', 'eng', 228, 1176, 96, STR_TO_DATE('6/8/2004', '%m/%d/%Y'), 'iUniverse');
INSERT INTO books VALUES (63, 'The Changeling', 'Kate Horsley', 3.55, '1590301943', '9781590301944', 'eng', 339, 301, 43, STR_TO_DATE('4/12/2005', '%m/%d/%Y'), 'Shambhala');
INSERT INTO books VALUES (66, 'The Changeling (Daughters of England  #15)', 'Philippa Carr', 3.98, '0449146979', '9780449146972', 'eng', 369, 345, 12, STR_TO_DATE('8/28/1990', '%m/%d/%Y'), 'Ivy Books');
INSERT INTO books VALUES (67, 'The Known World', 'Edward P. Jones', 3.83, '0061159174', '9780061159176', 'eng', 388, 29686, 2626, STR_TO_DATE('8/29/2006', '%m/%d/%Y'), 'Amistad');
INSERT INTO books VALUES (68, 'The Known World', 'Edward P. Jones/Kevin R. Free', 3.83, '006076273X', '9780060762735', 'en-US', 14, 55, 12, STR_TO_DATE('6/15/2004', '%m/%d/%Y'), 'HarperAudio');
INSERT INTO books VALUES (69, 'The Known World', 'Edward P. Jones', 3.83, '0060749911', '9780060749910', 'eng', 576, 22, 3, STR_TO_DATE('6/15/2004', '%m/%d/%Y'), 'Harper');
INSERT INTO books VALUES (71, 'Traders  Guns & Money: Knowns and Unknowns in the Dazzling World of Derivatives', 'Satyajit Das', 3.83, '0273704745', '9780273704744', 'eng', 334, 1456, 82, STR_TO_DATE('5/15/2006', '%m/%d/%Y'), 'FT Press');
INSERT INTO books VALUES (72, 'Artesia: Adventures in the Known World', 'Mark Smylie', 4.13, '1932386106', '9781932386103', 'eng', 352, 52, 4, STR_TO_DATE('12/14/2005', '%m/%d/%Y'), 'Archaia');
INSERT INTO books VALUES (74, 'The John McPhee Reader (John McPhee Reader  #1)', 'John McPhee/William Howarth', 4.42, '0374517193', '9780374517199', 'eng', 416, 562, 37, STR_TO_DATE('6/1/1982', '%m/%d/%Y'), 'Farrar  Straus and Giroux');
INSERT INTO books VALUES (75, 'Uncommon Carriers', 'John McPhee', 3.95, '0374280398', '9780374280390', 'en-US', 248, 1630, 203, STR_TO_DATE('5/16/2006', '%m/%d/%Y'), 'Farrar Straus Giroux');
INSERT INTO books VALUES (76, 'Heirs of General Practice', 'John McPhee', 4.17, '0374519749', '9780374519742', 'eng', 128, 268, 22, STR_TO_DATE('4/1/1986', '%m/%d/%Y'), 'Farrar  Straus and Giroux');
INSERT INTO books VALUES (77, 'The Control of Nature', 'John McPhee', 4.24, '0374522596', '9780374522599', 'en-US', 288, 3498, 305, STR_TO_DATE('9/1/1990', '%m/%d/%Y'), 'Farrar  Straus and Giroux');
INSERT INTO books VALUES (78, 'Annals of the Former World', 'John McPhee', 4.34, '0374518734', '9780374518738', 'eng', 720, 3115, 228, STR_TO_DATE('1/6/1999', '%m/%d/%Y'), 'Farrar  Straus and Giroux');
INSERT INTO books VALUES (79, 'Coming Into the Country', 'John McPhee', 4.22, '0374522871', '9780374522872', 'eng', 448, 5704, 261, STR_TO_DATE('4/1/1991', '%m/%d/%Y'), 'Farrar  Straus and Giroux');

select id, title, authors, average_rating, isbn from books LIMIT 2;
