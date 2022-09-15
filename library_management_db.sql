create database library;

use library;

create table author(
  id int not null primary key auto_increment,
  first_name varchar(255),
  last_name varchar(45),
  biography text
) ENGINE = InnoDB;

create table publisher(
  id int not null primary key auto_increment,
  first_name varchar(100),
  last_name varchar(100),
  email varchar(45)
) ENGINE = InnoDB;

create table borrower(
  cardNo varchar(16) not null primary key,
  first_name varchar(45),
  last_name varchar(45),
) ENGINE = InnoDB;

create table library_branch (
  id int not null primary key auto_increment,
  name varchar(100),
  adress varchar(255)
) ENGINE = InnoDB;

create table book (
  id int not null primary key auto_increment,
  title varchar(255) ,
  publisher_id int,
  author_id int
) ENGINE = InnoDB;

create table book_copies( 
  id int not null primary key auto_increment,
  book_id int, 
  library_branch_id int, 
  no_of_copies int
) ENGINE = InnoDB;

create table book_loans (
  id int not null primary key auto_increment,
  library_branch_id int,
  borrower_cardNo varchar(16),
  book_id int,
  date_out datetime,
  due_date datetime
) ENGINE=InnoDB;



// Insertion des auteurs dans la table author 

INSERT INTO author (first_name,last_name) VALUES ('Bravi', 'Soledad');
INSERT INTO author (first_name,last_name) VALUES ('Brière', 'Haquet Alice');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'Zeveren Michel');
INSERT INTO author (first_name,last_name) VALUES ('Crozon', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Chedru', 'Delphine');
INSERT INTO author (first_name,last_name) VALUES ('Collectif', '');
INSERT INTO author (first_name,last_name) VALUES ('Mbodj', 'Souleymane');
INSERT INTO author (first_name,last_name) VALUES ('Cassabois', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Uzunoglu', 'Adelheid');
INSERT INTO author (first_name,last_name) VALUES ('Grousset', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Mounié', 'Didier');
INSERT INTO author (first_name,last_name) VALUES ('Fromental', 'Jean-Luc');
INSERT INTO author (first_name,last_name) VALUES ('Sellier', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Orizet', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Renault', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Rachmuhl', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Giraud', 'Robert');
INSERT INTO author (first_name,last_name) VALUES ('Beamri', 'R');
INSERT INTO author (first_name,last_name) VALUES ('Coppin', 'Brigitte');
INSERT INTO author (first_name,last_name) VALUES ('Muzi', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Douzou', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Carter', 'David A.');
INSERT INTO author (first_name,last_name) VALUES ('Fox', 'Mem');
INSERT INTO author (first_name,last_name) VALUES ('Piquemal', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Solet', 'Bertrand');
INSERT INTO author (first_name,last_name) VALUES ('Dedieu', 'Thierry');
INSERT INTO author (first_name,last_name) VALUES ('Barrier', 'Perceval');
INSERT INTO author (first_name,last_name) VALUES ('Letuffe', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Boyer', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Bloch', 'Muriel');
INSERT INTO author (first_name,last_name) VALUES ('Jalbert', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Rettich', 'Maget');
INSERT INTO author (first_name,last_name) VALUES ('Pomme', 'd\'api');
INSERT INTO author (first_name,last_name) VALUES ('Buson', '');
INSERT INTO author (first_name,last_name) VALUES ('Touquet', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Grimm', 'Jacob');
INSERT INTO author (first_name,last_name) VALUES ('Kimura', 'Ken');
INSERT INTO author (first_name,last_name) VALUES ('Ponti', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Haughton', 'Chris');
INSERT INTO author (first_name,last_name) VALUES ('Browne', 'Anthony');
INSERT INTO author (first_name,last_name) VALUES ('Gutman', 'claude');
INSERT INTO author (first_name,last_name) VALUES ('Chaty', 'Guy');
INSERT INTO author (first_name,last_name) VALUES ('Friot', 'Bernard');
INSERT INTO author (first_name,last_name) VALUES ('Bonbon', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Siméon', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Schubiger', 'Jürg');
INSERT INTO author (first_name,last_name) VALUES ('Perrin', 'Clotilde');
INSERT INTO author (first_name,last_name) VALUES ('Favret', 'Hafida');
INSERT INTO author (first_name,last_name) VALUES ('Grosléziat', 'Chantal');
INSERT INTO author (first_name,last_name) VALUES ('Jean', 'Georges');
INSERT INTO author (first_name,last_name) VALUES ('Sara', '');
INSERT INTO author (first_name,last_name) VALUES ('Jun', 'Takabataka');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Touzé');
INSERT INTO author (first_name,last_name) VALUES ('Khoury-Ghata', 'Vénus');
INSERT INTO author (first_name,last_name) VALUES ('Louchard', 'Antonin');
INSERT INTO author (first_name,last_name) VALUES ('James', 'Simon');
INSERT INTO author (first_name,last_name) VALUES ('Devernois', 'Elsa');
INSERT INTO author (first_name,last_name) VALUES ('Coat', 'Anik');
INSERT INTO author (first_name,last_name) VALUES ('Beigel', 'Christine');
INSERT INTO author (first_name,last_name) VALUES ('Galeron', 'Henri');
INSERT INTO author (first_name,last_name) VALUES ('Moniz', 'Madalena');
INSERT INTO author (first_name,last_name) VALUES ('Feiffer', 'Jules');
INSERT INTO author (first_name,last_name) VALUES ('Kogjan', 'Grégoire');
INSERT INTO author (first_name,last_name) VALUES ('Boutros', 'Al-maari');
INSERT INTO author (first_name,last_name) VALUES ('Laurent', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Houdart', 'Emmanuelle');
INSERT INTO author (first_name,last_name) VALUES ('Adam', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Gravel', 'Elise');
INSERT INTO author (first_name,last_name) VALUES ('Ungerer', 'Tomi');
INSERT INTO author (first_name,last_name) VALUES ('Guyennon', 'Duchêne');
INSERT INTO author (first_name,last_name) VALUES ('Chaud', 'Benjamin');
INSERT INTO author (first_name,last_name) VALUES ('Corenblit', 'Rachel');
INSERT INTO author (first_name,last_name) VALUES ('Cali', 'Davide');
INSERT INTO author (first_name,last_name) VALUES ('Rodari', 'Gianni');
INSERT INTO author (first_name,last_name) VALUES ('Corentin', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Jean', 'Didier');
INSERT INTO author (first_name,last_name) VALUES ('Goffin', 'Josse');
INSERT INTO author (first_name,last_name) VALUES ('Duras', 'Marguerite');
INSERT INTO author (first_name,last_name) VALUES ('Serres', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Vatinel', 'Pascal');
INSERT INTO author (first_name,last_name) VALUES ('Morgan', '');
INSERT INTO author (first_name,last_name) VALUES ('Guilloppé', 'Antoine');
INSERT INTO author (first_name,last_name) VALUES ('Norac', 'Carl');
INSERT INTO author (first_name,last_name) VALUES ('Bruel', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('CRILJ', '');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'der');
INSERT INTO author (first_name,last_name) VALUES ('Fred', 'L');
INSERT INTO author (first_name,last_name) VALUES ('Carroll', 'Lewis');
INSERT INTO author (first_name,last_name) VALUES ('Willis', 'Jeanne');
INSERT INTO author (first_name,last_name) VALUES ('Crowther', 'Kitty');
INSERT INTO author (first_name,last_name) VALUES ('Gourounas', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Bourre', 'Martine');
INSERT INTO author (first_name,last_name) VALUES ('Sadeler', 'Joël');
INSERT INTO author (first_name,last_name) VALUES ('Bernard', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Pacovska', 'Kveta');
INSERT INTO author (first_name,last_name) VALUES ('Rosensthiel', 'Agnès');
INSERT INTO author (first_name,last_name) VALUES ('Brami', 'Elisabeth');
INSERT INTO author (first_name,last_name) VALUES ('Roman', 'Ghislaine');
INSERT INTO author (first_name,last_name) VALUES ('Lacombe', 'Benjamin');
INSERT INTO author (first_name,last_name) VALUES ('Krings', 'Anton');
INSERT INTO author (first_name,last_name) VALUES ('Raschka', 'Chris');
INSERT INTO author (first_name,last_name) VALUES ('Seyvos', 'Florence');
INSERT INTO author (first_name,last_name) VALUES ('Rascal', '');
INSERT INTO author (first_name,last_name) VALUES ('Moriceau', '');
INSERT INTO author (first_name,last_name) VALUES ('Ben', 'Kemoun Hubert');
INSERT INTO author (first_name,last_name) VALUES ('Taïeb', 'el Alj Ahmed');
INSERT INTO author (first_name,last_name) VALUES ('Chraïbi', 'Driss');
INSERT INTO author (first_name,last_name) VALUES ('Bauer', 'Jutta');
INSERT INTO author (first_name,last_name) VALUES ('Ducos', 'Max');
INSERT INTO author (first_name,last_name) VALUES ('Boucher', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Vaugelade', 'Anaïs');
INSERT INTO author (first_name,last_name) VALUES ('Miège-Simansky', 'Denise');
INSERT INTO author (first_name,last_name) VALUES ('Hédelin', 'Pascale');
INSERT INTO author (first_name,last_name) VALUES ('Lacet', 'Yvonne');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Hir');
INSERT INTO author (first_name,last_name) VALUES ('Paoloni', 'Sonia');
INSERT INTO author (first_name,last_name) VALUES ('Cathrine', 'Arnaud');
INSERT INTO author (first_name,last_name) VALUES ('Conrad', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Escoffier', 'Michaël');
INSERT INTO author (first_name,last_name) VALUES ('Browne', 'Anthony');
INSERT INTO author (first_name,last_name) VALUES ('Solotareff', 'Grégoire');
INSERT INTO author (first_name,last_name) VALUES ('Könnecke', 'Ole');
INSERT INTO author (first_name,last_name) VALUES ('Fondation', 'Zakoura');
INSERT INTO author (first_name,last_name) VALUES ('Charmeux', 'Evelyne');
INSERT INTO author (first_name,last_name) VALUES ('Boujon', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Bouchard', 'André');
INSERT INTO author (first_name,last_name) VALUES ('Fastier', 'Yann');
INSERT INTO author (first_name,last_name) VALUES ('Carle', 'Eric');
INSERT INTO author (first_name,last_name) VALUES ('Montardre', 'Hélène');
INSERT INTO author (first_name,last_name) VALUES ('Hall', 'Kirsten');
INSERT INTO author (first_name,last_name) VALUES ('Jonas', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Silverstein', 'Shel');
INSERT INTO author (first_name,last_name) VALUES ('Troïanowski', 'Johan');
INSERT INTO author (first_name,last_name) VALUES ('Queneau', 'Raymond');
INSERT INTO author (first_name,last_name) VALUES ('Mari', 'Iela');
INSERT INTO author (first_name,last_name) VALUES ('Vincensini', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Girardet', 'Sylvie');
INSERT INTO author (first_name,last_name) VALUES ('Mau', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Harcourt', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Coste', 'Nadia');
INSERT INTO author (first_name,last_name) VALUES ('Zenzius', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Lévy', 'Didier');
INSERT INTO author (first_name,last_name) VALUES ('Dutruc-Rosset', 'Florence');
INSERT INTO author (first_name,last_name) VALUES ('Ashbé', 'Jeanne');
INSERT INTO author (first_name,last_name) VALUES ('Chic', 'Suzy');
INSERT INTO author (first_name,last_name) VALUES ('Garralon', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Mathis', 'Jean-Marc');
INSERT INTO author (first_name,last_name) VALUES ('Bruley', 'Marie-Claire');
INSERT INTO author (first_name,last_name) VALUES ('Roxbee', 'Cox');
INSERT INTO author (first_name,last_name) VALUES ('Salvi', 'Manuela');
INSERT INTO author (first_name,last_name) VALUES ('Lejonc', 'Régis');
INSERT INTO author (first_name,last_name) VALUES ('Chedid', 'Andrée');
INSERT INTO author (first_name,last_name) VALUES ('Meunier', 'Henri');
INSERT INTO author (first_name,last_name) VALUES ('Delye', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Albert', 'Adrien');
INSERT INTO author (first_name,last_name) VALUES ('Hugo', 'Victor');
INSERT INTO author (first_name,last_name) VALUES ('Rathman', 'Peggy');
INSERT INTO author (first_name,last_name) VALUES ('Poussier', 'Audrey');
INSERT INTO author (first_name,last_name) VALUES ('Ramos', 'Mario');
INSERT INTO author (first_name,last_name) VALUES ('Tanaka', 'Béatrice');
INSERT INTO author (first_name,last_name) VALUES ('Agopian', 'Annie');
INSERT INTO author (first_name,last_name) VALUES ('Varley', 'Susan');
INSERT INTO author (first_name,last_name) VALUES ('Eeckhout', 'Emmanuelle');
INSERT INTO author (first_name,last_name) VALUES ('Ramadier', '');
INSERT INTO author (first_name,last_name) VALUES ('Lewis', 'Jean-Patrick');
INSERT INTO author (first_name,last_name) VALUES ('Cadot', 'Colin');
INSERT INTO author (first_name,last_name) VALUES ('Bourgeau', 'Vincent');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'Hout');
INSERT INTO author (first_name,last_name) VALUES ('Doray', 'Malika');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'der');
INSERT INTO author (first_name,last_name) VALUES ('Horowitz', 'Anthony');
INSERT INTO author (first_name,last_name) VALUES ('Pinson', 'Zaza');
INSERT INTO author (first_name,last_name) VALUES ('Sadat', 'Mandana');
INSERT INTO author (first_name,last_name) VALUES ('Mollet', 'Charlotte');
INSERT INTO author (first_name,last_name) VALUES ('Jadoul', 'Emile');
INSERT INTO author (first_name,last_name) VALUES ('Paris', 'Hugues');
INSERT INTO author (first_name,last_name) VALUES ('Pommaux', 'Yvan');
INSERT INTO author (first_name,last_name) VALUES ('Chérer', 'Sophie');
INSERT INTO author (first_name,last_name) VALUES ('Minhos', 'Martins');
INSERT INTO author (first_name,last_name) VALUES ('Godeau', 'Vincent');
INSERT INTO author (first_name,last_name) VALUES ('Cristina', 'Henriqueta');
INSERT INTO author (first_name,last_name) VALUES ('Cone', 'Bryant');
INSERT INTO author (first_name,last_name) VALUES ('Kerloch', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Twain', 'Mark');
INSERT INTO author (first_name,last_name) VALUES ('Ocelot', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Banks', 'Kate');
INSERT INTO author (first_name,last_name) VALUES ('Aceval', 'Nora');
INSERT INTO author (first_name,last_name) VALUES ('Thomas', 'Valérie');
INSERT INTO author (first_name,last_name) VALUES ('Surget', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Clézio');
INSERT INTO author (first_name,last_name) VALUES ('Mourlevat', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Yeh', 'Chun-Liang');
INSERT INTO author (first_name,last_name) VALUES ('Clément', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Pennart', 'Geoffroy');
INSERT INTO author (first_name,last_name) VALUES ('John', 'Jory');
INSERT INTO author (first_name,last_name) VALUES ('Dellamarre', 'Bellego');
INSERT INTO author (first_name,last_name) VALUES ('Promeyrat', 'Coline');
INSERT INTO author (first_name,last_name) VALUES ('Prévert', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Blake', 'Quentin');
INSERT INTO author (first_name,last_name) VALUES ('Lecointre', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Baer', 'Julien');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'Laan');
INSERT INTO author (first_name,last_name) VALUES ('Ellwand', 'David');
INSERT INTO author (first_name,last_name) VALUES ('Kang', 'Hye-sook');
INSERT INTO author (first_name,last_name) VALUES ('Dumont', 'Jean-François');
INSERT INTO author (first_name,last_name) VALUES ('Waddell', 'Martin');
INSERT INTO author (first_name,last_name) VALUES ('Leprince', 'de');
INSERT INTO author (first_name,last_name) VALUES ('Pef', '');
INSERT INTO author (first_name,last_name) VALUES ('Lecaye', 'Alexis');
INSERT INTO author (first_name,last_name) VALUES ('David', 'Gauthier');
INSERT INTO author (first_name,last_name) VALUES ('David', 'François');
INSERT INTO author (first_name,last_name) VALUES ('Elzbieta', '');
INSERT INTO author (first_name,last_name) VALUES ('Deacon', 'Alexis');
INSERT INTO author (first_name,last_name) VALUES ('Frier', 'Raphaële');
INSERT INTO author (first_name,last_name) VALUES ('Barroux', '');
INSERT INTO author (first_name,last_name) VALUES ('Cantais', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Nottet', 'Pascal');
INSERT INTO author (first_name,last_name) VALUES ('Chen', 'Chih-Yuan');
INSERT INTO author (first_name,last_name) VALUES ('Gouichoux', 'René');
INSERT INTO author (first_name,last_name) VALUES ('Valckx', 'Catharina');
INSERT INTO author (first_name,last_name) VALUES ('Ahlberg', 'Janet');
INSERT INTO author (first_name,last_name) VALUES ('Hoban', 'Tana');
INSERT INTO author (first_name,last_name) VALUES ('Perrault', 'Charles');
INSERT INTO author (first_name,last_name) VALUES ('Grimm', 'Jakob');
INSERT INTO author (first_name,last_name) VALUES ('Kasano', 'Yuchi');
INSERT INTO author (first_name,last_name) VALUES ('Marais', 'Frédéric');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Saux');
INSERT INTO author (first_name,last_name) VALUES ('Lear', 'Edward');
INSERT INTO author (first_name,last_name) VALUES ('Kuo', 'Fifi');
INSERT INTO author (first_name,last_name) VALUES ('Crausaz', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Monari', 'Manuela');
INSERT INTO author (first_name,last_name) VALUES ('Fort', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Morgenstern', 'Susie');
INSERT INTO author (first_name,last_name) VALUES ('Géhin', 'Elisa');
INSERT INTO author (first_name,last_name) VALUES ('Berner', 'Rotraut');
INSERT INTO author (first_name,last_name) VALUES ('Dwell', 'Studio');
INSERT INTO author (first_name,last_name) VALUES ('Ginsburg', 'Mirra');
INSERT INTO author (first_name,last_name) VALUES ('Hutchins', 'Pat');
INSERT INTO author (first_name,last_name) VALUES ('Hirsching', 'Nicolas');
INSERT INTO author (first_name,last_name) VALUES ('Emberley', 'Ed');
INSERT INTO author (first_name,last_name) VALUES ('Hill', 'Eric');
INSERT INTO author (first_name,last_name) VALUES ('Grenier', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Lenain', 'Thierry');
INSERT INTO author (first_name,last_name) VALUES ('Scotto', 'Thomas');
INSERT INTO author (first_name,last_name) VALUES ('Weninger', 'Brigitte');
INSERT INTO author (first_name,last_name) VALUES ('Cissé', 'Mamadou');
INSERT INTO author (first_name,last_name) VALUES ('Valentin', 'Elsa');
INSERT INTO author (first_name,last_name) VALUES ('Hahn', 'Cyril');
INSERT INTO author (first_name,last_name) VALUES ('Matéo', '"Pepito,"');
INSERT INTO author (first_name,last_name) VALUES ('Parot', 'Annelore');
INSERT INTO author (first_name,last_name) VALUES ('Celli', 'Rose');
INSERT INTO author (first_name,last_name) VALUES ('Servant', 'Stéphane');
INSERT INTO author (first_name,last_name) VALUES ('Soutif', 'François');
INSERT INTO author (first_name,last_name) VALUES ('Folika', '');
INSERT INTO author (first_name,last_name) VALUES ('Jalibert', 'Maria');
INSERT INTO author (first_name,last_name) VALUES ('Victor', 'Sylvain');
INSERT INTO author (first_name,last_name) VALUES ('Courgeon', 'Rémi');
INSERT INTO author (first_name,last_name) VALUES ('Herbauts', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Martin', 'Bill');
INSERT INTO author (first_name,last_name) VALUES ('Bataille', 'Marion');
INSERT INTO author (first_name,last_name) VALUES ('Zarcate', 'Catherine');
INSERT INTO author (first_name,last_name) VALUES ('Veille', 'Eric');
INSERT INTO author (first_name,last_name) VALUES ('Silei', 'Fabrizio');
INSERT INTO author (first_name,last_name) VALUES ('Herbreteau', 'Gaston');
INSERT INTO author (first_name,last_name) VALUES ('Diallo', 'Boubacar');
INSERT INTO author (first_name,last_name) VALUES ('Manceau', 'Edouard');
INSERT INTO author (first_name,last_name) VALUES ('Coat', 'Janik');
INSERT INTO author (first_name,last_name) VALUES ('Henry', 'Jean-Marie');
INSERT INTO author (first_name,last_name) VALUES ('Zemach', 'Margot');
INSERT INTO author (first_name,last_name) VALUES ('Blake', 'Stéphanie');
INSERT INTO author (first_name,last_name) VALUES ('Dreyfuss', 'Corinne');
INSERT INTO author (first_name,last_name) VALUES ('Cousins', 'Lucy');
INSERT INTO author (first_name,last_name) VALUES ('Goossens', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Latyk', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Denolle', 'Christel');
INSERT INTO author (first_name,last_name) VALUES ('Adams', 'Pam');
INSERT INTO author (first_name,last_name) VALUES ('Monloubou', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Konaté', 'Moussa');
INSERT INTO author (first_name,last_name) VALUES ('Loyer', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Grave', 'Marie-Eve');
INSERT INTO author (first_name,last_name) VALUES ('Cvach', 'Milos');
INSERT INTO author (first_name,last_name) VALUES ('Gay', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Stehr', 'Frédéric');
INSERT INTO author (first_name,last_name) VALUES ('Yonezu', 'Yusuke');
INSERT INTO author (first_name,last_name) VALUES ('Kochka', '');
INSERT INTO author (first_name,last_name) VALUES ('Voltz', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Brunet', 'Bénédicte');
INSERT INTO author (first_name,last_name) VALUES ('Mélisou', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'Genechten');
INSERT INTO author (first_name,last_name) VALUES ('Nakamura', 'Junko');
INSERT INTO author (first_name,last_name) VALUES ('Klassen', 'Jon');
INSERT INTO author (first_name,last_name) VALUES ('Ribeyron', 'Samuel');
INSERT INTO author (first_name,last_name) VALUES ('Willems', 'Mo');
INSERT INTO author (first_name,last_name) VALUES ('Andersen', 'Hans');
INSERT INTO author (first_name,last_name) VALUES ('Carlain', 'Noé');
INSERT INTO author (first_name,last_name) VALUES ('Grégoire', 'Caroline');
INSERT INTO author (first_name,last_name) VALUES ('Khaldi-Bonnaud', 'Ahmed');
INSERT INTO author (first_name,last_name) VALUES ('Turin', 'Joëlle');
INSERT INTO author (first_name,last_name) VALUES ('Bisinski', 'Pierrick');
INSERT INTO author (first_name,last_name) VALUES ('Lexau', 'Joan');
INSERT INTO author (first_name,last_name) VALUES ('Dorléans', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Pittau', 'Francesco');
INSERT INTO author (first_name,last_name) VALUES ('Lestrade', 'Agnès');
INSERT INTO author (first_name,last_name) VALUES ('Giordano', 'Philip');
INSERT INTO author (first_name,last_name) VALUES ('Bizouerne', 'Gilles');
INSERT INTO author (first_name,last_name) VALUES ('Tallec', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Brisou', 'Pellen');
INSERT INTO author (first_name,last_name) VALUES ('Dexet', 'Hector');
INSERT INTO author (first_name,last_name) VALUES ('Smith', 'Lane');
INSERT INTO author (first_name,last_name) VALUES ('Zolotow', 'Charlotte');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Craver');
INSERT INTO author (first_name,last_name) VALUES ('Cumont', 'Louise-Marie');
INSERT INTO author (first_name,last_name) VALUES ('Césaire', 'Aimé');
INSERT INTO author (first_name,last_name) VALUES ('Sheldon', 'Dyan');
INSERT INTO author (first_name,last_name) VALUES ('Gudule', '');
INSERT INTO author (first_name,last_name) VALUES ('Malte', 'Marcus');
INSERT INTO author (first_name,last_name) VALUES ('Nadja', '');
INSERT INTO author (first_name,last_name) VALUES ('Fuentes', 'Roland');
INSERT INTO author (first_name,last_name) VALUES ('Cousseau', 'Alex');
INSERT INTO author (first_name,last_name) VALUES ('Rosen', 'Michael');
INSERT INTO author (first_name,last_name) VALUES ('Angeli', 'May');
INSERT INTO author (first_name,last_name) VALUES ('Kimiko', '');
INSERT INTO author (first_name,last_name) VALUES ('Dr', 'Seuss');
INSERT INTO author (first_name,last_name) VALUES ('Pianina', 'Vincent');
INSERT INTO author (first_name,last_name) VALUES ('Poe', 'Edgar');
INSERT INTO author (first_name,last_name) VALUES ('Cortey', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Simonsen', 'Michèle');
INSERT INTO author (first_name,last_name) VALUES ('Tsarfati', 'Einat');
INSERT INTO author (first_name,last_name) VALUES ('Longour', 'Michèle');
INSERT INTO author (first_name,last_name) VALUES ('Fersen', 'Thomas');
INSERT INTO author (first_name,last_name) VALUES ('Quatromme', 'France');
INSERT INTO author (first_name,last_name) VALUES ('Duval', 'Elisabeth');
INSERT INTO author (first_name,last_name) VALUES ('Chazerand', 'Emilie');
INSERT INTO author (first_name,last_name) VALUES ('Gravett', 'Emily');
INSERT INTO author (first_name,last_name) VALUES ('Gabriel', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Kiffer', 'Christine');
INSERT INTO author (first_name,last_name) VALUES ('Davies', 'Stephen');
INSERT INTO author (first_name,last_name) VALUES ('Grindley', 'Sally');
INSERT INTO author (first_name,last_name) VALUES ('Bertrand', 'Frédérique');
INSERT INTO author (first_name,last_name) VALUES ('Cadier', 'Morgane');
INSERT INTO author (first_name,last_name) VALUES ('Minfong', 'Ho');
INSERT INTO author (first_name,last_name) VALUES ('Painset', 'Marie-France');
INSERT INTO author (first_name,last_name) VALUES ('Alemagna', 'Béatrice');
INSERT INTO author (first_name,last_name) VALUES ('Tullet', 'Hervé');
INSERT INTO author (first_name,last_name) VALUES ('Griffon', 'A');
INSERT INTO author (first_name,last_name) VALUES ('Bricout', 'Bernadette');
INSERT INTO author (first_name,last_name) VALUES ('Devos', 'Lydia');
INSERT INTO author (first_name,last_name) VALUES ('Monfreid', 'Dorothée');
INSERT INTO author (first_name,last_name) VALUES ('Nicolas', 'Christophe');
INSERT INTO author (first_name,last_name) VALUES ('Guérif', 'Andy');
INSERT INTO author (first_name,last_name) VALUES ('Wlodarczyk', 'Isabelle');
INSERT INTO author (first_name,last_name) VALUES ('Dorin', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Chabas', 'Jean-François');
INSERT INTO author (first_name,last_name) VALUES ('Mélano', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Morin', 'Patrick');
INSERT INTO author (first_name,last_name) VALUES ('Daniau', 'Marc');
INSERT INTO author (first_name,last_name) VALUES ('Shulevitz', 'Uri');
INSERT INTO author (first_name,last_name) VALUES ('Vidal', 'Séverine');
INSERT INTO author (first_name,last_name) VALUES ('Kipling', 'Rudyard');
INSERT INTO author (first_name,last_name) VALUES ('Fehr', 'Daniel');
INSERT INTO author (first_name,last_name) VALUES ('Vivardi', 'Liuna');
INSERT INTO author (first_name,last_name) VALUES ('Cosneau', 'Olivia');
INSERT INTO author (first_name,last_name) VALUES ('Pereira', 'Marjolaine');
INSERT INTO author (first_name,last_name) VALUES ('Dé', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Tardieu', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Havard', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Coran', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Dumas', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Yzac', 'Adeline');
INSERT INTO author (first_name,last_name) VALUES ('Lü', 'Yuan');
INSERT INTO author (first_name,last_name) VALUES ('Cevin', 'Evelyne');
INSERT INTO author (first_name,last_name) VALUES ('Ionesco', 'Eugène');
INSERT INTO author (first_name,last_name) VALUES ('Gaussel', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Belhalfaoui', 'Hamou');
INSERT INTO author (first_name,last_name) VALUES ('Gougaud', 'Henri');
INSERT INTO author (first_name,last_name) VALUES ('Féron', 'Romano');
INSERT INTO author (first_name,last_name) VALUES ('Causse', 'Rolande');
INSERT INTO author (first_name,last_name) VALUES ('Gendrin', 'Catherine');
INSERT INTO author (first_name,last_name) VALUES ('Gripari', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Cadier', 'Florence');
INSERT INTO author (first_name,last_name) VALUES ('Musa', 'Hassan');
INSERT INTO author (first_name,last_name) VALUES ('Condominas', 'Baptiste');
INSERT INTO author (first_name,last_name) VALUES ('Laporte', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Guillaume', 'Olive');
INSERT INTO author (first_name,last_name) VALUES ('Darwiche', 'Jihad');
INSERT INTO author (first_name,last_name) VALUES ('Delpeuch', 'Régis');
INSERT INTO author (first_name,last_name) VALUES ('"Bryan,"', '"Muzi,"');
INSERT INTO author (first_name,last_name) VALUES ('Faraggi', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Sternberg', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Mayo', 'Margaret');
INSERT INTO author (first_name,last_name) VALUES ('Descamps', 'Dominique');
INSERT INTO author (first_name,last_name) VALUES ('Mezquita', 'Roberto');
INSERT INTO author (first_name,last_name) VALUES ('Bertrand', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('UG', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Allancé', 'Mireille');
INSERT INTO author (first_name,last_name) VALUES ('Brun', 'Cosme');
INSERT INTO author (first_name,last_name) VALUES ('Torres', 'Cimarusti');
INSERT INTO author (first_name,last_name) VALUES ('Kérillis', 'Hélène');
INSERT INTO author (first_name,last_name) VALUES ('Gil', 'Isabelle');
INSERT INTO author (first_name,last_name) VALUES ('Dahl', 'Roald');
INSERT INTO author (first_name,last_name) VALUES ('Schädlich', 'Hans');
INSERT INTO author (first_name,last_name) VALUES ('Barthélémy', 'Mimi');
INSERT INTO author (first_name,last_name) VALUES ('Craipeau', 'Jean-Loup');
INSERT INTO author (first_name,last_name) VALUES ('Marie', 'et');
INSERT INTO author (first_name,last_name) VALUES ('London', 'Jack');
INSERT INTO author (first_name,last_name) VALUES ('Roubaud', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Nickl', 'Peter');
INSERT INTO author (first_name,last_name) VALUES ('Sendak', 'Maurice');
INSERT INTO author (first_name,last_name) VALUES ('Bouteloup', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('"Kochka,"', 'd\'après');
INSERT INTO author (first_name,last_name) VALUES ('Grimm', 'Jakob');
INSERT INTO author (first_name,last_name) VALUES ('Kunhardt', 'Dorothy');
INSERT INTO author (first_name,last_name) VALUES ('Boisrobert', 'et');
INSERT INTO author (first_name,last_name) VALUES ('Perreault', 'Mélanie');
INSERT INTO author (first_name,last_name) VALUES ('Grosz', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Massini', 'Anaïs');
INSERT INTO author (first_name,last_name) VALUES ('Tamarin', 'Annette');
INSERT INTO author (first_name,last_name) VALUES ('Marceau', 'Fani');
INSERT INTO author (first_name,last_name) VALUES ('Roumiguière', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Martin', 'Simon');
INSERT INTO author (first_name,last_name) VALUES ('Alline', 'Christophe');
INSERT INTO author (first_name,last_name) VALUES ('Eluard', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Mbaye', 'Ndaak');
INSERT INTO author (first_name,last_name) VALUES ('Bauer', 'Marion');
INSERT INTO author (first_name,last_name) VALUES ('Tawa', 'Kouam');
INSERT INTO author (first_name,last_name) VALUES ('Holzwarth', 'Werner');
INSERT INTO author (first_name,last_name) VALUES ('Gunzig', 'Thomas');
INSERT INTO author (first_name,last_name) VALUES ('Teckentrup', 'Britta');
INSERT INTO author (first_name,last_name) VALUES ('Defourny', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Baronian', 'Jean-Baptiste');
INSERT INTO author (first_name,last_name) VALUES ('Ramstein', 'Anne-Margot');
INSERT INTO author (first_name,last_name) VALUES ('Sanders', 'Alex');
INSERT INTO author (first_name,last_name) VALUES ('Costes', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Perrin', 'Julien');
INSERT INTO author (first_name,last_name) VALUES ('Gendre', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Leblanc', 'Catherine');
INSERT INTO author (first_name,last_name) VALUES ('Claveloux', 'Nicole');
INSERT INTO author (first_name,last_name) VALUES ('Weiss', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Poslaniec', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Rateau', 'Dominique');
INSERT INTO author (first_name,last_name) VALUES ('Cathalo', 'Georges');
INSERT INTO author (first_name,last_name) VALUES ('Bachelet', 'Gilles');
INSERT INTO author (first_name,last_name) VALUES ('Detamlbel', 'Régine');
INSERT INTO author (first_name,last_name) VALUES ('Nadaud', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Dubost', 'Louis');
INSERT INTO author (first_name,last_name) VALUES ('Simler', 'Isabelle');
INSERT INTO author (first_name,last_name) VALUES ('Vian', 'Boris');
INSERT INTO author (first_name,last_name) VALUES ('Carminati', 'Chiara');
INSERT INTO author (first_name,last_name) VALUES ('Bertier', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Pochard', 'Mireille');
INSERT INTO author (first_name,last_name) VALUES ('Lacor', 'Agnès');
INSERT INTO author (first_name,last_name) VALUES ('Scelles', 'Millie');
INSERT INTO author (first_name,last_name) VALUES ('Wormell', 'Chris');
INSERT INTO author (first_name,last_name) VALUES ('Kowarsky', 'Didier');
INSERT INTO author (first_name,last_name) VALUES ('Leo', 'Patrice');
INSERT INTO author (first_name,last_name) VALUES ('Kerloc\'h', 'Jean-Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Major', 'Lenia');
INSERT INTO author (first_name,last_name) VALUES ('Dubuc', 'Marianne');
INSERT INTO author (first_name,last_name) VALUES ('Laâbi', 'Jocelyne');
INSERT INTO author (first_name,last_name) VALUES ('Mac', 'Bratney');
INSERT INTO author (first_name,last_name) VALUES ('Muller', 'Gerda');
INSERT INTO author (first_name,last_name) VALUES ('Armellini', 'Chiara');
INSERT INTO author (first_name,last_name) VALUES ('Dang', 'Khoa');
INSERT INTO author (first_name,last_name) VALUES ('Sall', 'Mamadou');
INSERT INTO author (first_name,last_name) VALUES ('Green', 'Ilya');
INSERT INTO author (first_name,last_name) VALUES ('Roland', 'Claudine');
INSERT INTO author (first_name,last_name) VALUES ('Barton', 'Byron');
INSERT INTO author (first_name,last_name) VALUES ('Malineau', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('M', 'Serres');
INSERT INTO author (first_name,last_name) VALUES ('Gutleben', 'Muriel');
INSERT INTO author (first_name,last_name) VALUES ('Frasson-Cochet', 'Agathe');
INSERT INTO author (first_name,last_name) VALUES ('Tixier', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Brown', 'Ruth');
INSERT INTO author (first_name,last_name) VALUES ('Erlbruch', 'Wolf');
INSERT INTO author (first_name,last_name) VALUES ('Cognet', 'Lilas');
INSERT INTO author (first_name,last_name) VALUES ('Brunelet', 'Madeleine');
INSERT INTO author (first_name,last_name) VALUES ('Lilienthal', 'Henri');
INSERT INTO author (first_name,last_name) VALUES ('Villard', 'Marc');
INSERT INTO author (first_name,last_name) VALUES ('Kitzing', 'Constanze');
INSERT INTO author (first_name,last_name) VALUES ('Leynaud', 'Johan');
INSERT INTO author (first_name,last_name) VALUES ('Vignal', 'Hélène');
INSERT INTO author (first_name,last_name) VALUES ('Yeoman', 'John');
INSERT INTO author (first_name,last_name) VALUES ('Soupault', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Ivanovitch', 'Lair');
INSERT INTO author (first_name,last_name) VALUES ('Delval', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Joly', 'Fanny');
INSERT INTO author (first_name,last_name) VALUES ('Legrand', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Jandl', 'Ernst');
INSERT INTO author (first_name,last_name) VALUES ('Steig', 'William');
INSERT INTO author (first_name,last_name) VALUES ('Mathis', '');
INSERT INTO author (first_name,last_name) VALUES ('Guillbaud', 'Luce');
INSERT INTO author (first_name,last_name) VALUES ('Marsol', 'Manuel');
INSERT INTO author (first_name,last_name) VALUES ('Tenor', 'Arthur');
INSERT INTO author (first_name,last_name) VALUES ('Burningham', 'John');
INSERT INTO author (first_name,last_name) VALUES ('Knowles', 'Sheena');
INSERT INTO author (first_name,last_name) VALUES ('Proeng', 'Pich');
INSERT INTO author (first_name,last_name) VALUES ('Kebrety', 'Maryam');
INSERT INTO author (first_name,last_name) VALUES ('Rutten', 'Mélanie');
INSERT INTO author (first_name,last_name) VALUES ('Leroy', 'Hélène');
INSERT INTO author (first_name,last_name) VALUES ('Mac', 'Kee');
INSERT INTO author (first_name,last_name) VALUES ('Petit', 'Michèle');
INSERT INTO author (first_name,last_name) VALUES ('Cuvellier', 'Vincent');
INSERT INTO author (first_name,last_name) VALUES ('Yolen', 'Jane');
INSERT INTO author (first_name,last_name) VALUES ('Tae-Jun', 'Lee');
INSERT INTO author (first_name,last_name) VALUES ('Clément', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Brulet', 'Gilles');
INSERT INTO author (first_name,last_name) VALUES ('Vast', 'Emilie');
INSERT INTO author (first_name,last_name) VALUES ('Gellé', 'Albane');
INSERT INTO author (first_name,last_name) VALUES ('Hakim', 'Miloud');
INSERT INTO author (first_name,last_name) VALUES ('Davies', 'Benji');
INSERT INTO author (first_name,last_name) VALUES ('Roy', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Du', 'Faÿ');
INSERT INTO author (first_name,last_name) VALUES ('Bruley', 'M.');
INSERT INTO author (first_name,last_name) VALUES ('Kiko', '');
INSERT INTO author (first_name,last_name) VALUES ('Sénégas', 'Stéphane');
INSERT INTO author (first_name,last_name) VALUES ('Battut', 'Eric');
INSERT INTO author (first_name,last_name) VALUES ('Vincent', 'Gabrielle');
INSERT INTO author (first_name,last_name) VALUES ('Joie', 'par');
INSERT INTO author (first_name,last_name) VALUES ('Obin', 'Manfeï');
INSERT INTO author (first_name,last_name) VALUES ('Nadaus', 'Roland');
INSERT INTO author (first_name,last_name) VALUES ('Maubille', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Pfeiffer', 'Virginie');
INSERT INTO author (first_name,last_name) VALUES ('Collectif', 'enfants');
INSERT INTO author (first_name,last_name) VALUES ('Stella', 'Gaia');
INSERT INTO author (first_name,last_name) VALUES ('Hole', 'Stian');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'der');
INSERT INTO author (first_name,last_name) VALUES ('Pennac', 'Daniel');
INSERT INTO author (first_name,last_name) VALUES ('Fontenaille', 'Elise');
INSERT INTO author (first_name,last_name) VALUES ('Lobel', 'Arnold');
INSERT INTO author (first_name,last_name) VALUES ('Poirot-Chérif', 'Sandra');
INSERT INTO author (first_name,last_name) VALUES ('Slater', 'Dashka');
INSERT INTO author (first_name,last_name) VALUES ('Pintus', 'Eric');
INSERT INTO author (first_name,last_name) VALUES ('Ohmura', 'Tomoko');
INSERT INTO author (first_name,last_name) VALUES ('Iwamura', 'Kazuo');
INSERT INTO author (first_name,last_name) VALUES ('Dubray', 'Anne-Thérèse');
INSERT INTO author (first_name,last_name) VALUES ('Minne', 'Brigitte');
INSERT INTO author (first_name,last_name) VALUES ('Lacasa', 'Gomez');
INSERT INTO author (first_name,last_name) VALUES ('Desplat-Duc', 'Anne-Marie');
INSERT INTO author (first_name,last_name) VALUES ('Bessard', 'Sylvie');
INSERT INTO author (first_name,last_name) VALUES ('Szac', 'Murielle');
INSERT INTO author (first_name,last_name) VALUES ('Joire', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Place', 'François');
INSERT INTO author (first_name,last_name) VALUES ('Goble', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Pelot', 'Dylan');
INSERT INTO author (first_name,last_name) VALUES ('McDermott', 'Gerald');
INSERT INTO author (first_name,last_name) VALUES ('Leroy', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Bertron', 'Martin');
INSERT INTO author (first_name,last_name) VALUES ('Fugier', 'Laurence');
INSERT INTO author (first_name,last_name) VALUES ('Verdelet-Lamare', 'Annie');
INSERT INTO author (first_name,last_name) VALUES ('Heurté', 'Yves');
INSERT INTO author (first_name,last_name) VALUES ('Godard', 'Alex');
INSERT INTO author (first_name,last_name) VALUES ('Mounier', 'Fabienne');
INSERT INTO author (first_name,last_name) VALUES ('Stehr', 'Gérald');
INSERT INTO author (first_name,last_name) VALUES ('Lionni', 'Leo');
INSERT INTO author (first_name,last_name) VALUES ('Doremus', 'Gaëtan');
INSERT INTO author (first_name,last_name) VALUES ('Baret', 'Idatte');
INSERT INTO author (first_name,last_name) VALUES ('Nicodème', 'Béatrice');
INSERT INTO author (first_name,last_name) VALUES ('Ouyessad', 'Myriam');
INSERT INTO author (first_name,last_name) VALUES ('Lang', 'Suzanne');
INSERT INTO author (first_name,last_name) VALUES ('Chen', 'Jiang');
INSERT INTO author (first_name,last_name) VALUES ('Strasser', 'Susanne');
INSERT INTO author (first_name,last_name) VALUES ('Hoestlandt', 'Jo');
INSERT INTO author (first_name,last_name) VALUES ('Greef', 'Sabine');
INSERT INTO author (first_name,last_name) VALUES ('Hudrisier', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Noguès', 'Jean-Côme');
INSERT INTO author (first_name,last_name) VALUES ('Hikmet', 'Hazim');
INSERT INTO author (first_name,last_name) VALUES ('Bonnet', '');
INSERT INTO author (first_name,last_name) VALUES ('Amrouche', 'Taos');
INSERT INTO author (first_name,last_name) VALUES ('Astolfi', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Lechermeier', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Orsenna', 'Erik');
INSERT INTO author (first_name,last_name) VALUES ('Fontanel', 'Béatrice');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Gall');
INSERT INTO author (first_name,last_name) VALUES ('Epin', 'Bernard');
INSERT INTO author (first_name,last_name) VALUES ('Graves', 'Robert');
INSERT INTO author (first_name,last_name) VALUES ('Bernard', 'Fred');
INSERT INTO author (first_name,last_name) VALUES ('Kubler', 'Laurence');
INSERT INTO author (first_name,last_name) VALUES ('Balpe', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Parlange', 'Adrien');
INSERT INTO author (first_name,last_name) VALUES ('Zoboli', 'Giovanna');
INSERT INTO author (first_name,last_name) VALUES ('Gastaut', 'Charlotte');
INSERT INTO author (first_name,last_name) VALUES ('Bernstein', 'Galia');
INSERT INTO author (first_name,last_name) VALUES ('Colombet', 'Julie');
INSERT INTO author (first_name,last_name) VALUES ('Rossi', 'Annie');
INSERT INTO author (first_name,last_name) VALUES ('Massenot', 'Véronique');
INSERT INTO author (first_name,last_name) VALUES ('Elias', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Brown', 'Ken');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'de');
INSERT INTO author (first_name,last_name) VALUES ('Durand', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Vidal', 'Francine');
INSERT INTO author (first_name,last_name) VALUES ('Timmers', 'Leo');
INSERT INTO author (first_name,last_name) VALUES ('Tolstoï', 'Alexis');
INSERT INTO author (first_name,last_name) VALUES ('Muzo', '');
INSERT INTO author (first_name,last_name) VALUES ('Guillevic', '');
INSERT INTO author (first_name,last_name) VALUES ('Swift', 'Jonathan');
INSERT INTO author (first_name,last_name) VALUES ('Collectif', 'écoliers');
INSERT INTO author (first_name,last_name) VALUES ('Cros', 'Charles');
INSERT INTO author (first_name,last_name) VALUES ('Lhomme', 'Sandrine');
INSERT INTO author (first_name,last_name) VALUES ('Levine', 'Ellen');
INSERT INTO author (first_name,last_name) VALUES ('Laffon', 'Martine');
INSERT INTO author (first_name,last_name) VALUES ('Bailly', 'Maître');
INSERT INTO author (first_name,last_name) VALUES ('Charlip', 'Rémy');
INSERT INTO author (first_name,last_name) VALUES ('Brunhoff', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Diament', 'Nic');
INSERT INTO author (first_name,last_name) VALUES ('Munari', 'Bruno');
INSERT INTO author (first_name,last_name) VALUES ('Baltscheit', 'Martin');
INSERT INTO author (first_name,last_name) VALUES ('Labourdique', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Ben', 'Soussan');
INSERT INTO author (first_name,last_name) VALUES ('Cameron', 'Ann');
INSERT INTO author (first_name,last_name) VALUES ('Farilli', 'Elena');
INSERT INTO author (first_name,last_name) VALUES ('Deneux', 'Xavier');
INSERT INTO author (first_name,last_name) VALUES ('Heitz', 'Bruno');
INSERT INTO author (first_name,last_name) VALUES ('Domergue', 'Agnès');
INSERT INTO author (first_name,last_name) VALUES ('Dorémus', 'Gaétan');
INSERT INTO author (first_name,last_name) VALUES ('Barrett', 'Judi');
INSERT INTO author (first_name,last_name) VALUES ('Go', 'Hyejin');
INSERT INTO author (first_name,last_name) VALUES ('Riddell', 'Chris');
INSERT INTO author (first_name,last_name) VALUES ('Mayer', 'Mercer');
INSERT INTO author (first_name,last_name) VALUES ('Trouillot', 'Evelyne');
INSERT INTO author (first_name,last_name) VALUES ('Salisbury', 'Martin');
INSERT INTO author (first_name,last_name) VALUES ('Neeman', 'Sylvie');
INSERT INTO author (first_name,last_name) VALUES ('Lorant-Jolly', 'Annick');
INSERT INTO author (first_name,last_name) VALUES ('Joffre', 'Véronique');
INSERT INTO author (first_name,last_name) VALUES ('Attiogbé', 'Magali');
INSERT INTO author (first_name,last_name) VALUES ('', '');
INSERT INTO author (first_name,last_name) VALUES ('Estellon', 'Pascale');
INSERT INTO author (first_name,last_name) VALUES ('Becker', 'Aaron');
INSERT INTO author (first_name,last_name) VALUES ('Uman', 'Jennifer/Vidal');
INSERT INTO author (first_name,last_name) VALUES ('Ruel', 'Adeline');
INSERT INTO author (first_name,last_name) VALUES ('Nières-Chevrel', 'Isabelle');
INSERT INTO author (first_name,last_name) VALUES ('Burgaud', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Mercier', 'Julie');
INSERT INTO author (first_name,last_name) VALUES ('Louzon', 'Camille');
INSERT INTO author (first_name,last_name) VALUES ('Poitras', 'Anique');
INSERT INTO author (first_name,last_name) VALUES ('Chèze', 'Bernard');
INSERT INTO author (first_name,last_name) VALUES ('Baum', 'Gilles');
INSERT INTO author (first_name,last_name) VALUES ('McKinnon', 'Heidi');
INSERT INTO author (first_name,last_name) VALUES ('Mosconi', 'Patrick');
INSERT INTO author (first_name,last_name) VALUES ('Thévenet', 'Séverine');
INSERT INTO author (first_name,last_name) VALUES ('Marc', 'Solal');
INSERT INTO author (first_name,last_name) VALUES ('De', 'Rockere');
INSERT INTO author (first_name,last_name) VALUES ('Stevenson', 'RL');
INSERT INTO author (first_name,last_name) VALUES ('Mezzalama', 'Chiara');
INSERT INTO author (first_name,last_name) VALUES ('Palluy', 'Christine');
INSERT INTO author (first_name,last_name) VALUES ('Pouyet', 'Marc');
INSERT INTO author (first_name,last_name) VALUES ('Di', 'Mascio');
INSERT INTO author (first_name,last_name) VALUES ('Donnio', 'Sylviane');
INSERT INTO author (first_name,last_name) VALUES ('Guettier', 'Bénédicte');
INSERT INTO author (first_name,last_name) VALUES ('Guillotte', 'Eric');
INSERT INTO author (first_name,last_name) VALUES ('Geffen', 'Yehonatan');
INSERT INTO author (first_name,last_name) VALUES ('Bayar', 'Michèle');
INSERT INTO author (first_name,last_name) VALUES ('Mazard', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Thiès', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Havette', 'Servane');
INSERT INTO author (first_name,last_name) VALUES ('Ross', 'Tony');
INSERT INTO author (first_name,last_name) VALUES ('Moncomble', 'Gérard');
INSERT INTO author (first_name,last_name) VALUES ('Misslin', 'Sylvie');
INSERT INTO author (first_name,last_name) VALUES ('Baron', 'Marc');
INSERT INTO author (first_name,last_name) VALUES ('Musa', 'Patricia');
INSERT INTO author (first_name,last_name) VALUES ('Thiry', 'Marie-Eve');
INSERT INTO author (first_name,last_name) VALUES ('Gypteau', 'Nadia');
INSERT INTO author (first_name,last_name) VALUES ('Valckx', 'Catherine');
INSERT INTO author (first_name,last_name) VALUES ('Delafosse', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Wagner', 'Jenny');
INSERT INTO author (first_name,last_name) VALUES ('Sarno', 'Hélène');
INSERT INTO author (first_name,last_name) VALUES ('Taback', 'Simms');
INSERT INTO author (first_name,last_name) VALUES ('Charpentreau', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Diaz', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Safirstein', 'Julie');
INSERT INTO author (first_name,last_name) VALUES ('Hannappe', 'David');
INSERT INTO author (first_name,last_name) VALUES ('Kanor', 'Fabienne');
INSERT INTO author (first_name,last_name) VALUES ('Fine', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Wilsdorf', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Selena', 'Elena');
INSERT INTO author (first_name,last_name) VALUES ('Bialestowski', 'Gérard');
INSERT INTO author (first_name,last_name) VALUES ('Lautru', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Ibn', 'el');
INSERT INTO author (first_name,last_name) VALUES ('Inkpen', 'Mick');
INSERT INTO author (first_name,last_name) VALUES ('Lalinon', 'Gbado');
INSERT INTO author (first_name,last_name) VALUES ('Boel', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Benjelloun', 'Saïd');
INSERT INTO author (first_name,last_name) VALUES ('O\'Byrne', 'Nicola');
INSERT INTO author (first_name,last_name) VALUES ('Delacroix', 'Sibylle');
INSERT INTO author (first_name,last_name) VALUES ('François', 'André');
INSERT INTO author (first_name,last_name) VALUES ('Nguyên', 'Viet');
INSERT INTO author (first_name,last_name) VALUES ('Pinfold', 'Levi');
INSERT INTO author (first_name,last_name) VALUES ('Cherisey', 'Thérèse');
INSERT INTO author (first_name,last_name) VALUES ('Clavel', 'Bernard');
INSERT INTO author (first_name,last_name) VALUES ('Kraus', 'Robert');
INSERT INTO author (first_name,last_name) VALUES ('Lecaye', 'Olga');
INSERT INTO author (first_name,last_name) VALUES ('Dros', 'Imme');
INSERT INTO author (first_name,last_name) VALUES ('Kessler', 'Frédéric');
INSERT INTO author (first_name,last_name) VALUES ('Berchoud', 'Bruno');
INSERT INTO author (first_name,last_name) VALUES ('Held', 'Jacqueline');
INSERT INTO author (first_name,last_name) VALUES ('Fortier', 'Natali');
INSERT INTO author (first_name,last_name) VALUES ('Pinkey', 'Jerry');
INSERT INTO author (first_name,last_name) VALUES ('Chenouf', 'Yvanne');
INSERT INTO author (first_name,last_name) VALUES ('Boulaire', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Escarpit', 'Denise');
INSERT INTO author (first_name,last_name) VALUES ('Claverie', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Louis', 'Catherine');
INSERT INTO author (first_name,last_name) VALUES ('Khémir', 'Nacer');
INSERT INTO author (first_name,last_name) VALUES ('Harrison', 'David');
INSERT INTO author (first_name,last_name) VALUES ('Duprat', 'Guillaume');
INSERT INTO author (first_name,last_name) VALUES ('Berner', 'Rotraut');
INSERT INTO author (first_name,last_name) VALUES ('Bonnafé', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Buguet', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Bernos', 'Clotilde');
INSERT INTO author (first_name,last_name) VALUES ('Jaffrennou', 'Yves');
INSERT INTO author (first_name,last_name) VALUES ('La', 'Fontaine');
INSERT INTO author (first_name,last_name) VALUES ('Choux', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Robillard', 'Jean-Marie');
INSERT INTO author (first_name,last_name) VALUES ('Picouly', 'Daniel');
INSERT INTO author (first_name,last_name) VALUES ('S.A.H.G.Y.K.O.D.', '');
INSERT INTO author (first_name,last_name) VALUES ('Lenglet', 'Maud');
INSERT INTO author (first_name,last_name) VALUES ('Khoury', 'Gatha');
INSERT INTO author (first_name,last_name) VALUES ('Mets', 'Alan');
INSERT INTO author (first_name,last_name) VALUES ('Audren', '');
INSERT INTO author (first_name,last_name) VALUES ('Hinckel', 'Florence');
INSERT INTO author (first_name,last_name) VALUES ('Witek', 'Jo');
INSERT INTO author (first_name,last_name) VALUES ('Mabanckou', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Nicolino', 'Fabrice');
INSERT INTO author (first_name,last_name) VALUES ('Janisch', 'Hans');
INSERT INTO author (first_name,last_name) VALUES ('Blanpain', 'Jean-Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Noiret', 'Gérard');
INSERT INTO author (first_name,last_name) VALUES ('Ichikawa', 'Satomi');
INSERT INTO author (first_name,last_name) VALUES ('Clément', 'Frédéric');
INSERT INTO author (first_name,last_name) VALUES ('Utton', 'Peter');
INSERT INTO author (first_name,last_name) VALUES ('Tashlin', 'Frank');
INSERT INTO author (first_name,last_name) VALUES ('Moraes', 'Vinicius');
INSERT INTO author (first_name,last_name) VALUES ('Swanson', 'Susan');
INSERT INTO author (first_name,last_name) VALUES ('Moore', 'Inga');
INSERT INTO author (first_name,last_name) VALUES ('Bielinsky', 'Claudia');
INSERT INTO author (first_name,last_name) VALUES ('Joubert', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Moeyaert', 'Bart');
INSERT INTO author (first_name,last_name) VALUES ('Laugausie', 'Justine');
INSERT INTO author (first_name,last_name) VALUES ('Nivola', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Dorémus', 'Gaëtan');
INSERT INTO author (first_name,last_name) VALUES ('Higgins', 'Ryan');
INSERT INTO author (first_name,last_name) VALUES ('Zidrou', '');
INSERT INTO author (first_name,last_name) VALUES ('Jaffé', 'Laura');
INSERT INTO author (first_name,last_name) VALUES ('Maussion', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Bougeault', 'Pascale');
INSERT INTO author (first_name,last_name) VALUES ('Carter', 'Noëlle');
INSERT INTO author (first_name,last_name) VALUES ('Schneider', 'Christine');
INSERT INTO author (first_name,last_name) VALUES ('Fournier', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Glondoumé', 'Sika');
INSERT INTO author (first_name,last_name) VALUES ('Diallo', 'Mamadou');
INSERT INTO author (first_name,last_name) VALUES ('Cauwe', 'Lucie');
INSERT INTO author (first_name,last_name) VALUES ('Colmont', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Daeninckx', 'Didier');
INSERT INTO author (first_name,last_name) VALUES ('Aimé', 'Marcel');
INSERT INTO author (first_name,last_name) VALUES ('Adriansen', 'Sophie');
INSERT INTO author (first_name,last_name) VALUES ('Condominas', 'Laurent');
INSERT INTO author (first_name,last_name) VALUES ('Rice', 'Hélène');
INSERT INTO author (first_name,last_name) VALUES ('McNeil', 'David');
INSERT INTO author (first_name,last_name) VALUES ('Watanabe', 'Michio');
INSERT INTO author (first_name,last_name) VALUES ('Barbarou', 'Lucienne');
INSERT INTO author (first_name,last_name) VALUES ('Perrin', 'Martine');
INSERT INTO author (first_name,last_name) VALUES ('Yagoubi', 'Valérie');
INSERT INTO author (first_name,last_name) VALUES ('Ruiz', 'Olivia');
INSERT INTO author (first_name,last_name) VALUES ('Brenman', 'Ilan');
INSERT INTO author (first_name,last_name) VALUES ('Korkos', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Lloyd', 'Sam');
INSERT INTO author (first_name,last_name) VALUES ('Robberecht', 'Thierry');
INSERT INTO author (first_name,last_name) VALUES ('Kalan', 'Robert');
INSERT INTO author (first_name,last_name) VALUES ('Lagerlof', 'Selma');
INSERT INTO author (first_name,last_name) VALUES ('Rueda', 'Claudia');
INSERT INTO author (first_name,last_name) VALUES ('Ovide', '');
INSERT INTO author (first_name,last_name) VALUES ('Aït', 'Ahmed');
INSERT INTO author (first_name,last_name) VALUES ('Ebohéa', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Watanabe', 'Issa');
INSERT INTO author (first_name,last_name) VALUES ('Flouw', 'Benjamin');
INSERT INTO author (first_name,last_name) VALUES ('Diallo', 'Muriel');
INSERT INTO author (first_name,last_name) VALUES ('Barman', 'Adrienne');
INSERT INTO author (first_name,last_name) VALUES ('ARPLE', '');
INSERT INTO author (first_name,last_name) VALUES ('Leduc', 'Daniel');
INSERT INTO author (first_name,last_name) VALUES ('Pang', 'Miguel');
INSERT INTO author (first_name,last_name) VALUES ('Kitamura', 'Satochi');
INSERT INTO author (first_name,last_name) VALUES ('Laffon', 'Caroline');
INSERT INTO author (first_name,last_name) VALUES ('Cantin', 'Marc');
INSERT INTO author (first_name,last_name) VALUES ('Perret', 'Delphine');
INSERT INTO author (first_name,last_name) VALUES ('Chabbert', 'Ingrid');
INSERT INTO author (first_name,last_name) VALUES ('Bahar', 'Sunar');
INSERT INTO author (first_name,last_name) VALUES ('Vernette', 'Véronique');
INSERT INTO author (first_name,last_name) VALUES ('Titus', '');
INSERT INTO author (first_name,last_name) VALUES ('Rouzé', 'Marina');
INSERT INTO author (first_name,last_name) VALUES ('Fauliot', 'Pascal');
INSERT INTO author (first_name,last_name) VALUES ('Mereu', 'Agata');
INSERT INTO author (first_name,last_name) VALUES ('El', 'Fathi');
INSERT INTO author (first_name,last_name) VALUES ('Schwarz', 'Annelies');
INSERT INTO author (first_name,last_name) VALUES ('Ka', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Vasconcelos', 'José');
INSERT INTO author (first_name,last_name) VALUES ('Wisniewski', 'Gaya');
INSERT INTO author (first_name,last_name) VALUES ('Demasse-Pottier', 'Stéphanie');
INSERT INTO author (first_name,last_name) VALUES ('Kasza', 'Keiko');
INSERT INTO author (first_name,last_name) VALUES ('Wall', 'Fiona');
INSERT INTO author (first_name,last_name) VALUES ('Miyamoto', 'Tadao');
INSERT INTO author (first_name,last_name) VALUES ('Legendre', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Daufresne', 'Michelle');
INSERT INTO author (first_name,last_name) VALUES ('Delecroix', 'Hanieh');
INSERT INTO author (first_name,last_name) VALUES ('Silloray', '');
INSERT INTO author (first_name,last_name) VALUES ('Zullo', 'Germano');
INSERT INTO author (first_name,last_name) VALUES ('Claudel', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Wiesner', 'David');
INSERT INTO author (first_name,last_name) VALUES ('Cannard', 'Edmée');
INSERT INTO author (first_name,last_name) VALUES ('Pegorier', 'Saralisa');
INSERT INTO author (first_name,last_name) VALUES ('Gay-Para', 'Praline');
INSERT INTO author (first_name,last_name) VALUES ('Bichonnier', 'Henriette');
INSERT INTO author (first_name,last_name) VALUES ('Ayadi', 'Boubakeur');
INSERT INTO author (first_name,last_name) VALUES ('Propp', 'Vladimir');
INSERT INTO author (first_name,last_name) VALUES ('Léger-Cresson', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Boudet', 'Alain');
INSERT INTO author (first_name,last_name) VALUES ('Guenoun', 'Joël');
INSERT INTO author (first_name,last_name) VALUES ('Lecaye', 'Emmanuel');
INSERT INTO author (first_name,last_name) VALUES ('Villiot', 'Bernard');
INSERT INTO author (first_name,last_name) VALUES ('Desnouveaux', 'Florence');
INSERT INTO author (first_name,last_name) VALUES ('Sommerset', 'Mark');
INSERT INTO author (first_name,last_name) VALUES ('Golan', 'Haji');
INSERT INTO author (first_name,last_name) VALUES ('Brouillard', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Kinsa', 'Gabriel');
INSERT INTO author (first_name,last_name) VALUES ('Ben', 'Soussan');
INSERT INTO author (first_name,last_name) VALUES ('Maunoury', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Weulersse', 'Odile');
INSERT INTO author (first_name,last_name) VALUES ('Birant', 'Mehmet');
INSERT INTO author (first_name,last_name) VALUES ('Charlat', 'Benoît');
INSERT INTO author (first_name,last_name) VALUES ('Muratet', 'Louis');
INSERT INTO author (first_name,last_name) VALUES ('Leblond', 'Michaël');
INSERT INTO author (first_name,last_name) VALUES ('Beauvois', 'Delphine');
INSERT INTO author (first_name,last_name) VALUES ('Olive', 'Guillaume');
INSERT INTO author (first_name,last_name) VALUES ('Watt', 'Fiona');
INSERT INTO author (first_name,last_name) VALUES ('Snicket', 'Lemony');
INSERT INTO author (first_name,last_name) VALUES ('Mandelbaum', 'Pili');
INSERT INTO author (first_name,last_name) VALUES ('Duval', 'Isabelle');
INSERT INTO author (first_name,last_name) VALUES ('Hellings', 'Colette');
INSERT INTO author (first_name,last_name) VALUES ('Bone', 'Betty');
INSERT INTO author (first_name,last_name) VALUES ('Béziat', 'Julien');
INSERT INTO author (first_name,last_name) VALUES ('Aribaud', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Jacques', 'Benoît');
INSERT INTO author (first_name,last_name) VALUES ('Péghaire', 'Vincent');
INSERT INTO author (first_name,last_name) VALUES ('Maudet', 'Mathieu');
INSERT INTO author (first_name,last_name) VALUES ('Boisrobert', 'Anouck');
INSERT INTO author (first_name,last_name) VALUES ('Beaude', 'PM.');
INSERT INTO author (first_name,last_name) VALUES ('Sala', 'Felicita');
INSERT INTO author (first_name,last_name) VALUES ('Bianco-Levin', 'Nicolas');
INSERT INTO author (first_name,last_name) VALUES ('Ressouni', 'Demigneux');
INSERT INTO author (first_name,last_name) VALUES ('Dayre', 'Valérie');
INSERT INTO author (first_name,last_name) VALUES ('Cendrars', 'Blaise');
INSERT INTO author (first_name,last_name) VALUES ('Stravinsky', 'Igor');
INSERT INTO author (first_name,last_name) VALUES ('Poirot-Cherif', 'Sandra');
INSERT INTO author (first_name,last_name) VALUES ('Bermond', 'Monique');
INSERT INTO author (first_name,last_name) VALUES ('Vincent', 'François');
INSERT INTO author (first_name,last_name) VALUES ('Roux', 'Julien');
INSERT INTO author (first_name,last_name) VALUES ('Falconer', 'Ian');
INSERT INTO author (first_name,last_name) VALUES ('Dunrea', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Arrou-Vignod', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Jonquet', 'Thierry');
INSERT INTO author (first_name,last_name) VALUES ('Simard', 'Eric');
INSERT INTO author (first_name,last_name) VALUES ('Séguy', 'Fabienne');
INSERT INTO author (first_name,last_name) VALUES ('Florian', 'Mélanie');
INSERT INTO author (first_name,last_name) VALUES ('Rayna', 'S');
INSERT INTO author (first_name,last_name) VALUES ('Norge', '');
INSERT INTO author (first_name,last_name) VALUES ('Bunting', 'E.');
INSERT INTO author (first_name,last_name) VALUES ('Doyle', 'Roddy');
INSERT INTO author (first_name,last_name) VALUES ('Pizzoli', 'Greg');
INSERT INTO author (first_name,last_name) VALUES ('Ravishankar', 'A');
INSERT INTO author (first_name,last_name) VALUES ('Corazza', 'Linda');
INSERT INTO author (first_name,last_name) VALUES ('Dupuy', 'Dunier');
INSERT INTO author (first_name,last_name) VALUES ('Tupera', 'Tupera');
INSERT INTO author (first_name,last_name) VALUES ('Alix', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Yumoto', 'Kazumi');
INSERT INTO author (first_name,last_name) VALUES ('Lavie', 'Oren');
INSERT INTO author (first_name,last_name) VALUES ('Alonso', 'Jose');
INSERT INTO author (first_name,last_name) VALUES ('Klausmeier', 'Klaus');
INSERT INTO author (first_name,last_name) VALUES ('Di', 'Giovanni');
INSERT INTO author (first_name,last_name) VALUES ('Ovaldé', 'Véronique');
INSERT INTO author (first_name,last_name) VALUES ('Mrzyk', 'et');
INSERT INTO author (first_name,last_name) VALUES ('Clavel', 'Fabien');
INSERT INTO author (first_name,last_name) VALUES ('Texier', 'Ophélie');
INSERT INTO author (first_name,last_name) VALUES ('Allen', 'Nicholas');
INSERT INTO author (first_name,last_name) VALUES ('Touzeil', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Salinas', 'Veronica');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Néouanic');
INSERT INTO author (first_name,last_name) VALUES ('Helft', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Mwankumi', 'Dominique');
INSERT INTO author (first_name,last_name) VALUES ('Desnos', 'Robert');
INSERT INTO author (first_name,last_name) VALUES ('Ninie', '');
INSERT INTO author (first_name,last_name) VALUES ('Dalrymple', 'Jennifer');
INSERT INTO author (first_name,last_name) VALUES ('Sanders', 'Louis');
INSERT INTO author (first_name,last_name) VALUES ('Loucou', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Dubois', 'CK');
INSERT INTO author (first_name,last_name) VALUES ('Robert', 'Nadine');
INSERT INTO author (first_name,last_name) VALUES ('Matéo', 'Pepito');
INSERT INTO author (first_name,last_name) VALUES ('Monsabert', 'A.-Sophie');
INSERT INTO author (first_name,last_name) VALUES ('Fournier', '');
INSERT INTO author (first_name,last_name) VALUES ('Climo', 'Liz');
INSERT INTO author (first_name,last_name) VALUES ('Giono', 'Jean');
INSERT INTO author (first_name,last_name) VALUES ('Pinguilly', 'Yves');
INSERT INTO author (first_name,last_name) VALUES ('Duve', 'Catherine');
INSERT INTO author (first_name,last_name) VALUES ('Proust', 'Marcel');
INSERT INTO author (first_name,last_name) VALUES ('Le', 'Saux');
INSERT INTO author (first_name,last_name) VALUES ('Hugo', 'Hector');
INSERT INTO author (first_name,last_name) VALUES ('Kamoun', 'Martine');
INSERT INTO author (first_name,last_name) VALUES ('Macri', 'Giancarlo');
INSERT INTO author (first_name,last_name) VALUES ('Duquennoy', 'Jacques');
INSERT INTO author (first_name,last_name) VALUES ('Falorsi', 'Ilaria');
INSERT INTO author (first_name,last_name) VALUES ('Saint-Exupéry', 'Antoine');
INSERT INTO author (first_name,last_name) VALUES ('Verluca', 'Constance');
INSERT INTO author (first_name,last_name) VALUES ('Mirman', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Wintrebert', 'Joëlle');
INSERT INTO author (first_name,last_name) VALUES ('Allemand', 'Sylvie');
INSERT INTO author (first_name,last_name) VALUES ('Weaver', 'Jo');
INSERT INTO author (first_name,last_name) VALUES ('Chausson', 'Julia');
INSERT INTO author (first_name,last_name) VALUES ('Carrier', 'Isabelle');
INSERT INTO author (first_name,last_name) VALUES ('Grunelius-Hollard', 'Agnès');
INSERT INTO author (first_name,last_name) VALUES ('Grunelius', 'Hollard');
INSERT INTO author (first_name,last_name) VALUES ('Voutch', '');
INSERT INTO author (first_name,last_name) VALUES ('Corr', 'Christopher');
INSERT INTO author (first_name,last_name) VALUES ('Buteau', 'Gaëlle');
INSERT INTO author (first_name,last_name) VALUES ('Jolibois', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Moüy', 'Iris');
INSERT INTO author (first_name,last_name) VALUES ('Wood', 'Don');
INSERT INTO author (first_name,last_name) VALUES ('Dubé', 'Pierrette');
INSERT INTO author (first_name,last_name) VALUES ('Vinet', 'Sofie');
INSERT INTO author (first_name,last_name) VALUES ('Aladjidi', 'Virginie');
INSERT INTO author (first_name,last_name) VALUES ('Montse', 'Gisbert');
INSERT INTO author (first_name,last_name) VALUES ('Holmelund', 'Minarik');
INSERT INTO author (first_name,last_name) VALUES ('Dubois', 'Jean-Claude');
INSERT INTO author (first_name,last_name) VALUES ('Hee-na', 'Baek');
INSERT INTO author (first_name,last_name) VALUES ('Altan', '');
INSERT INTO author (first_name,last_name) VALUES ('Destours', 'Christine');
INSERT INTO author (first_name,last_name) VALUES ('Claire', 'Céline');
INSERT INTO author (first_name,last_name) VALUES ('Dubois', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Tolstoï', 'Léon');
INSERT INTO author (first_name,last_name) VALUES ('Iwamura', 'Kasuo');
INSERT INTO author (first_name,last_name) VALUES ('Girardet', 'et');
INSERT INTO author (first_name,last_name) VALUES ('Rogier', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Pastoureau', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Oppel', 'Jean-Luc');
INSERT INTO author (first_name,last_name) VALUES ('Rocard', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Jay', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Brisac', 'Geneviève');
INSERT INTO author (first_name,last_name) VALUES ('Backès', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Perez', 'Sébastien');
INSERT INTO author (first_name,last_name) VALUES ('Bathany', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Pinto', 'Deborah');
INSERT INTO author (first_name,last_name) VALUES ('Henderson', 'Kathy');
INSERT INTO author (first_name,last_name) VALUES ('Pavlenko', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Barcilon', 'Marianne');
INSERT INTO author (first_name,last_name) VALUES ('Moka', '');
INSERT INTO author (first_name,last_name) VALUES ('Bergèse', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Soletti', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Hérédia', 'Géraldine');
INSERT INTO author (first_name,last_name) VALUES ('Magnier', 'Bernard');
INSERT INTO author (first_name,last_name) VALUES ('Mardam-Bey', 'Farouk');
INSERT INTO author (first_name,last_name) VALUES ('Arraga', 'de');
INSERT INTO author (first_name,last_name) VALUES ('Lévêque', 'Valérie');
INSERT INTO author (first_name,last_name) VALUES ('Grant', 'Joan');
INSERT INTO author (first_name,last_name) VALUES ('Storr', 'Catherine');
INSERT INTO author (first_name,last_name) VALUES ('Badescu', 'Ramona');
INSERT INTO author (first_name,last_name) VALUES ('Soleil', 'Emilie');
INSERT INTO author (first_name,last_name) VALUES ('Mari', 'Iela');
INSERT INTO author (first_name,last_name) VALUES ('Sorman', 'Joy');
INSERT INTO author (first_name,last_name) VALUES ('Vissière', 'Sophie');
INSERT INTO author (first_name,last_name) VALUES ('Escudié', 'René');
INSERT INTO author (first_name,last_name) VALUES ('Loufane', '');
INSERT INTO author (first_name,last_name) VALUES ('Coran', 'Pierre');
INSERT INTO author (first_name,last_name) VALUES ('Da', 'Silva');
INSERT INTO author (first_name,last_name) VALUES ('Pierpont', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Hobson', 'Bruce');
INSERT INTO author (first_name,last_name) VALUES ('Lila', 'Prap');
INSERT INTO author (first_name,last_name) VALUES ('"Bonnafé,"', '"Cabrero,"');
INSERT INTO author (first_name,last_name) VALUES ('Felix', 'Lucie');
INSERT INTO author (first_name,last_name) VALUES ('Moissard', 'Boris');
INSERT INTO author (first_name,last_name) VALUES ('Chausse', 'Sylvie');
INSERT INTO author (first_name,last_name) VALUES ('Benameur', 'Jeanne');
INSERT INTO author (first_name,last_name) VALUES ('Chen', 'Jian');
INSERT INTO author (first_name,last_name) VALUES ('Curatolo', 'Justine');
INSERT INTO author (first_name,last_name) VALUES ('La', 'Villefromoit');
INSERT INTO author (first_name,last_name) VALUES ('Félix', 'Lucie');
INSERT INTO author (first_name,last_name) VALUES ('Delessert', 'Etienne');
INSERT INTO author (first_name,last_name) VALUES ('Naumann-Villemin', 'Christine');
INSERT INTO author (first_name,last_name) VALUES ('Bettelheim', 'Bruno');
INSERT INTO author (first_name,last_name) VALUES ('Bigot', 'Gigi');
INSERT INTO author (first_name,last_name) VALUES ('Olten', 'Manuela');
INSERT INTO author (first_name,last_name) VALUES ('Ubac', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Dek', 'Maria');
INSERT INTO author (first_name,last_name) VALUES ('Gréban', 'Quentin');
INSERT INTO author (first_name,last_name) VALUES ('Bonotaux', 'Gilles');
INSERT INTO author (first_name,last_name) VALUES ('Cabrera', 'Jane');
INSERT INTO author (first_name,last_name) VALUES ('Morel', 'François');
INSERT INTO author (first_name,last_name) VALUES ('Ruillier', 'Jérôme');
INSERT INTO author (first_name,last_name) VALUES ('Jenkins', 'Steve');
INSERT INTO author (first_name,last_name) VALUES ('Joslin', 'Sesyle');
INSERT INTO author (first_name,last_name) VALUES ('Machado', 'Ana');
INSERT INTO author (first_name,last_name) VALUES ('Santini', 'Bertrand');
INSERT INTO author (first_name,last_name) VALUES ('Gabrielle', 'Vincent');
INSERT INTO author (first_name,last_name) VALUES ('Teyssèdre', 'Fabienne');
INSERT INTO author (first_name,last_name) VALUES ('Aubrun', 'Claudine');
INSERT INTO author (first_name,last_name) VALUES ('Périgot', 'Joseph');
INSERT INTO author (first_name,last_name) VALUES ('Gratias', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Némo', 'et');
INSERT INTO author (first_name,last_name) VALUES ('Bresner', 'Lisa');
INSERT INTO author (first_name,last_name) VALUES ('Kemmeter', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Trédez', 'Emmanuel');
INSERT INTO author (first_name,last_name) VALUES ('Besnier', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Manfeï', 'Obin');
INSERT INTO author (first_name,last_name) VALUES ('Daywalt', 'Drew');
INSERT INTO author (first_name,last_name) VALUES ('Skarmeta', 'Antonio');
INSERT INTO author (first_name,last_name) VALUES ('Alibeu', 'Géraldine');
INSERT INTO author (first_name,last_name) VALUES ('Hayashi', 'Emiri');
INSERT INTO author (first_name,last_name) VALUES ('Lucia', 'Scuderi');
INSERT INTO author (first_name,last_name) VALUES ('Steff', '');
INSERT INTO author (first_name,last_name) VALUES ('Quintane', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Bickford-Smith', 'Coralie');
INSERT INTO author (first_name,last_name) VALUES ('Ducatteau', 'Florence');
INSERT INTO author (first_name,last_name) VALUES ('Battault', 'Paule');
INSERT INTO author (first_name,last_name) VALUES ('Char', 'René');
INSERT INTO author (first_name,last_name) VALUES ('Janikovszky', 'Eva');
INSERT INTO author (first_name,last_name) VALUES ('Luciani', 'Jean-Luc');
INSERT INTO author (first_name,last_name) VALUES ('Brami', 'Elizabeth');
INSERT INTO author (first_name,last_name) VALUES ('Sakaï', 'Komako');
INSERT INTO author (first_name,last_name) VALUES ('Bonniol', 'Magali');
INSERT INTO author (first_name,last_name) VALUES ('Rimbaud', 'Arthur');
INSERT INTO author (first_name,last_name) VALUES ('Coran', '"Pierre,"');
INSERT INTO author (first_name,last_name) VALUES ('Turin', 'Adela');
INSERT INTO author (first_name,last_name) VALUES ('Sabbagh', 'Clémence');
INSERT INTO author (first_name,last_name) VALUES ('Voigt', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Pourquié', 'Bernadette');
INSERT INTO author (first_name,last_name) VALUES ('Cohen-Janca', 'Irène');
INSERT INTO author (first_name,last_name) VALUES ('Roger', 'Marie');
INSERT INTO author (first_name,last_name) VALUES ('Blexbolex', '');
INSERT INTO author (first_name,last_name) VALUES ('Issa', '');
INSERT INTO author (first_name,last_name) VALUES ('Cole', 'Babette');
INSERT INTO author (first_name,last_name) VALUES ('Dio', 'Mohamed');
INSERT INTO author (first_name,last_name) VALUES ('Dorin', 'Perrine');
INSERT INTO author (first_name,last_name) VALUES ('Tzannes', '');
INSERT INTO author (first_name,last_name) VALUES ('Mebs', 'Gudrun');
INSERT INTO author (first_name,last_name) VALUES ('Sarrazin', 'Jean-Charles');
INSERT INTO author (first_name,last_name) VALUES ('Matsuoka', 'Tatsuhide');
INSERT INTO author (first_name,last_name) VALUES ('Hughes', 'Emily');
INSERT INTO author (first_name,last_name) VALUES ('Aubert', 'Brigitte');
INSERT INTO author (first_name,last_name) VALUES ('Todd-Stanton', 'Joe');
INSERT INTO author (first_name,last_name) VALUES ('Trotereau', 'Anne');
INSERT INTO author (first_name,last_name) VALUES ('Clayton', 'Junior');
INSERT INTO author (first_name,last_name) VALUES ('Guibert', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Koenig', 'Viviane');
INSERT INTO author (first_name,last_name) VALUES ('Spier', 'Paul');
INSERT INTO author (first_name,last_name) VALUES ('Monnereau', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Larreula', 'Enric');
INSERT INTO author (first_name,last_name) VALUES ('Caylou', 'Véronique');
INSERT INTO author (first_name,last_name) VALUES ('Stein', 'Mathilde');
INSERT INTO author (first_name,last_name) VALUES ('Hindenoch', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Larizza', 'Olivier');
INSERT INTO author (first_name,last_name) VALUES ('Schickel', 'Emilie');
INSERT INTO author (first_name,last_name) VALUES ('Japon', '');
INSERT INTO author (first_name,last_name) VALUES ('Bobe', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Lambersy', 'Werner');
INSERT INTO author (first_name,last_name) VALUES ('Paris', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Crosbie', 'Duncan');
INSERT INTO author (first_name,last_name) VALUES ('Cardon', 'Laurent');
INSERT INTO author (first_name,last_name) VALUES ('Hoban', 'Kristy');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'de');
INSERT INTO author (first_name,last_name) VALUES ('Pappa', 'Rodoula');
INSERT INTO author (first_name,last_name) VALUES ('Herbert', 'Scott');
INSERT INTO author (first_name,last_name) VALUES ('Roman', 'Nadia');
INSERT INTO author (first_name,last_name) VALUES ('Coat', 'Janie');
INSERT INTO author (first_name,last_name) VALUES ('Kipling/Chaliand', 'Gérard');
INSERT INTO author (first_name,last_name) VALUES ('Cobb', 'Rebecca');
INSERT INTO author (first_name,last_name) VALUES ('Epanya', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Ferrer', 'Nino');
INSERT INTO author (first_name,last_name) VALUES ('Raisson', 'Gwendoline');
INSERT INTO author (first_name,last_name) VALUES ('Naumann', 'Villemin');
INSERT INTO author (first_name,last_name) VALUES ('Kerr', 'Judith');
INSERT INTO author (first_name,last_name) VALUES ('Gagnon', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Lodge', 'Jo');
INSERT INTO author (first_name,last_name) VALUES ('Willer', 'Thérèse');
INSERT INTO author (first_name,last_name) VALUES ('Armange', 'Xavier');
INSERT INTO author (first_name,last_name) VALUES ('Daladier', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Duda', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Morrison', 'Toni');
INSERT INTO author (first_name,last_name) VALUES ('Elschner', 'Géraldine');
INSERT INTO author (first_name,last_name) VALUES ('Wise', 'Brown');
INSERT INTO author (first_name,last_name) VALUES ('Misraki', '');
INSERT INTO author (first_name,last_name) VALUES ('Pernaudet', 'Christophe');
INSERT INTO author (first_name,last_name) VALUES ('Agence', 'Quand');
INSERT INTO author (first_name,last_name) VALUES ('Cooke', 'Trish');
INSERT INTO author (first_name,last_name) VALUES ('Legrand', 'Gilbert');
INSERT INTO author (first_name,last_name) VALUES ('Colombani', 'Laetitia');
INSERT INTO author (first_name,last_name) VALUES ('Santangelo', 'Eugène');
INSERT INTO author (first_name,last_name) VALUES ('Lafonta', 'Isabelle');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'Zeveren');
INSERT INTO author (first_name,last_name) VALUES ('Vassallo', 'Rose-Marie');
INSERT INTO author (first_name,last_name) VALUES ('Rivoal', 'Marine');
INSERT INTO author (first_name,last_name) VALUES ('Dufresne', 'Didier');
INSERT INTO author (first_name,last_name) VALUES ('Oster', 'Christian');
INSERT INTO author (first_name,last_name) VALUES ('Pontavice', 'Clémentine');
INSERT INTO author (first_name,last_name) VALUES ('Sanchez', 'Virginie');
INSERT INTO author (first_name,last_name) VALUES ('Gueyfier', 'Judith');
INSERT INTO author (first_name,last_name) VALUES ('Schnitzberger', 'Simon');
INSERT INTO author (first_name,last_name) VALUES ('Galea', 'Claudine');
INSERT INTO author (first_name,last_name) VALUES ('Urial', '');
INSERT INTO author (first_name,last_name) VALUES ('Seeber', 'Dorothea');
INSERT INTO author (first_name,last_name) VALUES ('Buzzeo', 'Toni');
INSERT INTO author (first_name,last_name) VALUES ('Aubrun', 'Claude');
INSERT INTO author (first_name,last_name) VALUES ('Benoist', 'Cécile');
INSERT INTO author (first_name,last_name) VALUES ('Chavepeyer', 'I');
INSERT INTO author (first_name,last_name) VALUES ('Supervielle', 'Jules');
INSERT INTO author (first_name,last_name) VALUES ('Su', 'Dong');
INSERT INTO author (first_name,last_name) VALUES ('Goytisolo', 'José');
INSERT INTO author (first_name,last_name) VALUES ('Ipcar', 'Dahlov');
INSERT INTO author (first_name,last_name) VALUES ('Cazals', 'Thierry');
INSERT INTO author (first_name,last_name) VALUES ('Voake', 'Charlotte');
INSERT INTO author (first_name,last_name) VALUES ('Yi', 'Gee');
INSERT INTO author (first_name,last_name) VALUES ('Roux', 'Delphine');
INSERT INTO author (first_name,last_name) VALUES ('Kaïteris', 'Constantin');
INSERT INTO author (first_name,last_name) VALUES ('Cabaco', 'Silvia');
INSERT INTO author (first_name,last_name) VALUES ('Nessmann', 'Philippe');
INSERT INTO author (first_name,last_name) VALUES ('Simon', 'Quitterie');
INSERT INTO author (first_name,last_name) VALUES ('Shingu', 'Susumu');
INSERT INTO author (first_name,last_name) VALUES ('Crews', 'Donald');
INSERT INTO author (first_name,last_name) VALUES ('Malnuit', 'Françoise');
INSERT INTO author (first_name,last_name) VALUES ('Bertrand', 'Micheline');
INSERT INTO author (first_name,last_name) VALUES ('Billiard', 'Jean-Michel');
INSERT INTO author (first_name,last_name) VALUES ('Mallard', 'Marie-Constance');
INSERT INTO author (first_name,last_name) VALUES ('Brière', 'Joëlle');
INSERT INTO author (first_name,last_name) VALUES ('Henkes', 'Kevin');
INSERT INTO author (first_name,last_name) VALUES ('Gibert', 'Bruno');
INSERT INTO author (first_name,last_name) VALUES ('Garth', 'Williams');
INSERT INTO author (first_name,last_name) VALUES ('Church', 'Caroline');
INSERT INTO author (first_name,last_name) VALUES ('Devaux', 'Stéfany');
INSERT INTO author (first_name,last_name) VALUES ('Kalioujny', 'Pauline');
INSERT INTO author (first_name,last_name) VALUES ('Cagnard', 'Dominique');
INSERT INTO author (first_name,last_name) VALUES ('Pigois', 'Melissa');
INSERT INTO author (first_name,last_name) VALUES ('Alméras', 'Arnaud');
INSERT INTO author (first_name,last_name) VALUES ('Hale', 'Nathan');
INSERT INTO author (first_name,last_name) VALUES ('Lee', 'Suzy');
INSERT INTO author (first_name,last_name) VALUES ('Merleau-Ponty', 'Claire');
INSERT INTO author (first_name,last_name) VALUES ('Mankour', 'Mohamed');
INSERT INTO author (first_name,last_name) VALUES ('Fetjö', 'Raphaël');
INSERT INTO author (first_name,last_name) VALUES ('Guillon', 'Camille');
INSERT INTO author (first_name,last_name) VALUES ('Angelou', 'Maya');
INSERT INTO author (first_name,last_name) VALUES ('Bayard', 'Michèle');
INSERT INTO author (first_name,last_name) VALUES ('Galvin', 'Michel');
INSERT INTO author (first_name,last_name) VALUES ('Thydell', '');
INSERT INTO author (first_name,last_name) VALUES ('Dumortier', 'David');
INSERT INTO author (first_name,last_name) VALUES ('Blegvard', 'E');
INSERT INTO author (first_name,last_name) VALUES ('Ollivier', 'Mikaël');
INSERT INTO author (first_name,last_name) VALUES ('Seong-eun', 'Kim');
INSERT INTO author (first_name,last_name) VALUES ('Van', 'Biesen');
INSERT INTO author (first_name,last_name) VALUES ('Prévot', 'Franck');
INSERT INTO author (first_name,last_name) VALUES ('Grelet', 'Isabella');
INSERT INTO author (first_name,last_name) VALUES ('Gravel', 'François');
INSERT INTO author (first_name,last_name) VALUES ('Dodeller', 'Sylvie');
INSERT INTO author (first_name,last_name) VALUES ('Peynot', 'Patrick');
INSERT INTO author (first_name,last_name) VALUES ('Whelan', 'Gloria');
INSERT INTO author (first_name,last_name) VALUES ('Lee', 'Hyun-kyeong');
INSERT INTO author (first_name,last_name) VALUES ('Derouen', 'Jean-Marc');
INSERT INTO author (first_name,last_name) VALUES ('Diéterlé', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Dieterlé', 'Nathalie');
INSERT INTO author (first_name,last_name) VALUES ('Zimet', 'Ben');
INSERT INTO author (first_name,last_name) VALUES ('Ehlert', 'Lois');
INSERT INTO author (first_name,last_name) VALUES ('Barbeau', 'Philippe');




// Insertion des éditeurs ; 

INSERT INTO "publisher" ("first_name")
VALUES
    ('A pas de loups'),
    ('A2MIMO'),
    ('ABC Melody'),
    ('ACCES'),
    ('Actes Sud'),
    ('Actes sud junior'),
    ('Aedis'),
    ('Albin Michel'),
    ('Albin Michel jeunesse'),
    ('Aldéran édition'),
    ('Alice'),
    ('Alice jeunesse'),
    ('Alkindi'),
    ('Almaterra'),
    ('Alyssa'),
    ('Amaterra'),
    ('AND'),
    ('ANLCI'),
    ('Après la lune jeunesse'),
    ('Assoc fr pour la lecture'),
    ('Assoc. Paris-musées'),
    ('Association Afflux'),
    ('Atelier du poisson soluble'),
    ('Atelier du poissson soluble'),
    ('Atelier du Scribe'),
    ('Auto production'),
    ('Autrement'),
    ('Autrement jeunesse'),
    ('Balivernes'),
    ('Balzane'),
    ('Bayard'),
    ('Bayard jeunesse'),
    ('Belin'),
    ('Belin jeunesse'),
    ('Belize'),
    ('Benoît Jacques'),
    ('Benoît Jacques Books'),
    ('bib.municip Paris'),
    ('Bibliothèque de Toulouse'),
    ('Bilboquet'),
    ('Biscoto'),
    ('BNF'),
    ('Bruno Doucey'),
    ('Bulles de savon'),
    ('Cadex'),
    ('Cahiers du CRILJ n° 10'),
    ('Cahiers du CRILJ n° 3'),
    ('Cahiers du CRILJ n° 4'),
    ('Cahiers du CRILJ n° 5'),
    ('Cahiers du CRILJ n° 7'),
    ('Cahiers du CRILJ n°8'),
    ('Calmann-Lévy'),
    ('Cambourakis'),
    ('Casterman'),
    ('Castor benjamin'),
    ('Castor poche'),
    ('Catalpas'),
    ('CCMDE'),
    ('Centre Georges Pompidou'),
    ('Cercle de la librairie'),
    ('Chan-Ok'),
    ('Cherche-midi'),
    ('Cheyne'),
    ('Cipango'),
    ('Circé'),
    ('Circonflexe'),
    ('CLAP Midi-Pyrénées'),
    ('Compagnie créative'),
    ('Cornélius'),
    ('Corps puce'),
    ('Courtes et longues'),
    ('Dapper'),
    ('De facto'),
    ('De la Martinière'),
    ('De la Martinière jeunesse'),
    ('Des Eléphants'),
    ('Des Idées et des Hommes'),
    ('Didier'),
    ('Didier jeunesse'),
    ('Dominique et cie'),
    ('Donner à voir'),
    ('Duculot Casterman'),
    ('Ecole Centre Montauban'),
    ('Ecole des loisirs'),
    ('Ed Corps Puce'),
    ('Ed Quart monde'),
    ('Ed. des Elephants'),
    ('Ed. des Elephants/Amnesty'),
    ('Ed. du Jasmin'),
    ('Edition des Monts'),
    ('Editions de la Balle'),
    ('Editions du Jasmin'),
    ('Education Nationale'),
    ('Elan vert'),
    ('Encore une fois'),
    ('ERES'),
    ('Escabelle'),
    ('Esperluète'),
    ('Etre'),
    ('Eyrolles'),
    ('Flammarion'),
    ('Flammarion jeunesse'),
    ('FLBLB'),
    ('Fleurus'),
    ('Flies France'),
    ('FOL de l\'Ardèche'),
    ('Folio junior'),
    ('Folle avoine'),
    ('Fond. BNP'),
    ('France Loisirs'),
    ('Frimousse'),
    ('GAEL'),
    ('Galeri Minyatür'),
    ('Gallimard'),
    ('Gallimard jeunesse'),
    ('Gautier-Languereau'),
    ('Grandir'),
    ('Grasset'),
    ('Grasset jeunesse'),
    ('Gros textes'),
    ('Gründ'),
    ('Gulf Stream'),
    ('Hachette'),
    ('Hachette jeunesse'),
    ('Hatier'),
    ('Hatier jeunesse'),
    ('Hatier poche'),
    ('Helium'),
    ('Hélium'),
    ('Hoëbeke'),
    ('Hong Fei'),
    ('Hongfei'),
    ('Il était deux fois'),
    ('Jean-Pierre Delarge'),
    ('Kalandraka'),
    ('Kate\'art'),
    ('Kid Pocket'),
    ('Kilowatt'),
    ('Kimane'),
    ('Krom Sakamapheap'),
    ('L\'agrume'),
    ('L\'art à la page'),
    ('L\'Edune'),
    ('L\'élan vert'),
    ('L\'Harmattan'),
    ('L\'Hydre'),
    ('L\'idée bleue'),
    ('L\'iroli'),
    ('La Bagnole'),
    ('La cabane sur le chien'),
    ('La compagnie Créative'),
    ('La Découverte poche'),
    ('La joie de lire'),
    ('La joie par les livres'),
    ('La maison est en carton'),
    ('La Martinière'),
    ('La Palissade'),
    ('La Pastèque'),
    ('La Renarde rouge'),
    ('La ville brûle'),
    ('Larousse'),
    ('Le baron perché'),
    ('Le cherche midi'),
    ('Le Dé bleu'),
    ('Le Farfadet bleu'),
    ('Le Genevrier'),
    ('Le Griffon bleu'),
    ('Le Jasmin'),
    ('Le Pommier'),
    ('Le port a jauni'),
    ('Le Rocher'),
    ('Le Sablier éditeur'),
    ('Le Sorbier'),
    ('Le Sorbier/Amnesty'),
    ('Le Trou de nez'),
    ('Le vengeur masqué'),
    ('Les 400 coups'),
    ('Les Arènes'),
    ('Les Cahiers de la Charte'),
    ('les éditions du mouton cerise'),
    ('Les fourmis rouges'),
    ('Les Grandes Personnes'),
    ('Les Grands Personnes'),
    ('Les p\'tits bérets'),
    ('Les papareils'),
    ('Lirabelle'),
    ('Lirabelle/Amnesty'),
    ('Lis avec moi'),
    ('Lito'),
    ('Little Urban'),
    ('Lo Païs d\'Enfance'),
    ('Magnard'),
    ('Magnard jeunesse'),
    ('Mango'),
    ('Mango jeunesse'),
    ('Margot'),
    ('Marsam'),
    ('MeMo'),
    ('Mic-Mac'),
    ('Michalon'),
    ('Michel Lafon'),
    ('Mijade'),
    ('Mila'),
    ('Mila éditions'),
    ('Milan'),
    ('Milan éducation'),
    ('Milan jeunesse'),
    ('Milan poche'),
    ('Millefeuilles'),
    ('Minedition'),
    ('Mini Syros'),
    ('Montreuil'),
    ('MØtus'),
    ('Mouton cerise'),
    ('Naïve'),
    ('Nathan'),
    ('Nathan jeunesse'),
    ('Nord-Sud'),
    ('Notari'),
    ('Nuinui'),
    ('OQO éditions'),
    ('Oskar'),
    ('Oskar jeunesse'),
    ('Où sont les enfants ?'),
    ('P\'tit cairn'),
    ('P\'tit Glénat'),
    ('Palette'),
    ('Paquet éditions'),
    ('Paris Bibliothèques'),
    ('Paris Musées'),
    ('Pastel'),
    ('PEMF'),
    ('PEMF ados'),
    ('Penguin books'),
    ('Père Fouettard'),
    ('Petit à petit'),
    ('Picquier jeunesse'),
    ('Pluie d\'étoiles'),
    ('Pluie d’étoiles'),
    ('Plume d\'Ocris'),
    ('Plume de carotte'),
    ('Poche'),
    ('Pocket'),
    ('Pocket jeunesse'),
    ('Pocket junior'),
    ('Pockett junior'),
    ('Point de suspension'),
    ('Points de Suspension'),
    ('Poisson soluble'),
    ('Pourquoi pas'),
    ('Présence production'),
    ('Privat'),
    ('Publisud'),
    ('Quart monde'),
    ('Quatre fleuves'),
    ('Québec'),
    ('Rageot'),
    ('Réciproques'),
    ('Réunion des musées nationaux'),
    ('Réunion musées nationaux'),
    ('Rêves bleus'),
    ('Ricochet'),
    ('Rivages'),
    ('Robert Laffont'),
    ('Rocher'),
    ('Rouegue'),
    ('Rouergue'),
    ('Rouge safran'),
    ('Rue du monde'),
    ('Ruisseaux d\'Afrique'),
    ('Saltimbanque'),
    ('Sarbacane'),
    ('Sarbacane/Amnesty'),
    ('SEDRAP'),
    ('SEDRAP jeunesse'),
    ('Seghers'),
    ('Seghers jeune bilingue'),
    ('Seuil'),
    ('Seuil jeunesse'),
    ('Soc et foc'),
    ('Sorbier'),
    ('Souchon-Garrigue Hélène'),
    ('Stock'),
    ('Syros'),
    ('Syros Jeunesse'),
    ('Syros/Amnesty'),
    ('Table ronde'),
    ('Talents hauts'),
    ('Tapori'),
    ('Thierry Magnier'),
    ('Tourbillon'),
    ('Touret'),
    ('Usborne'),
    ('Vents d\'ailleurs'),
    ('Verdier'),
    ('Versant Sud'),
    ('Vigot'),
    ('Vilo jeunesse'),
    ('Vives voix'),
    ('Walker Book'),
    ('Yanbow al Kitab'),
    ('Yomad'),
    ('Zone J.'),
    ('Zorba');


/* insertion des livres dans la table book ; */

