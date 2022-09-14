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

INSERT INTO "author" ("first_name","last_name")
VALUES
    ('Bravi', 'Soledad'),
    ('Brière', 'Haquet Alice'),
    ('Van', 'Zeveren Michel'),
    ('Crozon', 'Alain'),
    ('Chedru', 'Delphine'),
    ('Collectif', ''),
    ('Mbodj', 'Souleymane'),
    ('Cassabois', 'Jacques'),
    ('Uzunoglu', 'Adelheid'),
    ('Grousset', 'Alain'),
    ('Mounié', 'Didier'),
    ('Fromental', 'Jean-Luc'),
    ('Sellier', 'Marie'),
    ('Orizet', 'Jean'),
    ('Renault', 'Jean'),
    ('Rachmuhl', 'Françoise'),
    ('Giraud', 'Robert'),
    ('Beamri', 'R'),
    ('Coppin', 'Brigitte'),
    ('Muzi', 'Jean'),
    ('Douzou', 'Olivier'),
    ('Carter', 'David A.'),
    ('Fox', 'Mem'),
    ('Piquemal', 'Michel'),
    ('Solet', 'Bertrand'),
    ('Dedieu', 'Thierry'),
    ('Barrier', 'Perceval'),
    ('Letuffe', 'Anne'),
    ('Boyer', 'Cécile'),
    ('Bloch', 'Muriel'),
    ('Jalbert', 'Philippe'),
    ('Rettich', 'Maget'),
    ('Pomme', 'd\'api'),
    ('Buson', ''),
    ('Touquet', 'Marie'),
    ('Grimm', 'Jacob'),
    ('Kimura', 'Ken'),
    ('Ponti', 'Claude'),
    ('Haughton', 'Chris'),
    ('Browne', 'Anthony'),
    ('Gutman', 'claude'),
    ('Chaty', 'Guy'),
    ('Friot', 'Bernard'),
    ('Bonbon', 'Cécile'),
    ('Siméon', 'Jean'),
    ('Schubiger', 'Jürg'),
    ('Perrin', 'Clotilde'),
    ('Favret', 'Hafida'),
    ('Grosléziat', 'Chantal'),
    ('Jean', 'Georges'),
    ('Sara', ''),
    ('Jun', 'Takabataka'),
    ('Le', 'Touzé'),
    ('Khoury-Ghata', 'Vénus'),
    ('Louchard', 'Antonin'),
    ('James', 'Simon'),
    ('Devernois', 'Elsa'),
    ('Coat', 'Anik'),
    ('Beigel', 'Christine'),
    ('Galeron', 'Henri'),
    ('Moniz', 'Madalena'),
    ('Feiffer', 'Jules'),
    ('Kogjan', 'Grégoire'),
    ('Boutros', 'Al-maari'),
    ('Laurent', 'Nathalie'),
    ('Houdart', 'Emmanuelle'),
    ('Adam', 'Olivier'),
    ('Gravel', 'Elise'),
    ('Ungerer', 'Tomi'),
    ('Guyennon', 'Duchêne'),
    ('Chaud', 'Benjamin'),
    ('Corenblit', 'Rachel'),
    ('Cali', 'Davide'),
    ('Rodari', 'Gianni'),
    ('Corentin', 'Philippe'),
    ('Jean', 'Didier'),
    ('Goffin', 'Josse'),
    ('Duras', 'Marguerite'),
    ('Serres', 'Alain'),
    ('Vatinel', 'Pascal'),
    ('Morgan', ''),
    ('Guilloppé', 'Antoine'),
    ('Norac', 'Carl'),
    ('Bruel', 'Christian'),
    ('CRILJ', ''),
    ('Van', 'der'),
    ('Fred', 'L'),
    ('Carroll', 'Lewis'),
    ('Willis', 'Jeanne'),
    ('Crowther', 'Kitty'),
    ('Gourounas', 'Jean'),
    ('Bourre', 'Martine'),
    ('Sadeler', 'Joël'),
    ('Bernard', 'Cécile'),
    ('Pacovska', 'Kveta'),
    ('Rosensthiel', 'Agnès'),
    ('Brami', 'Elisabeth'),
    ('Roman', 'Ghislaine'),
    ('Lacombe', 'Benjamin'),
    ('Krings', 'Anton'),
    ('Raschka', 'Chris'),
    ('Seyvos', 'Florence'),
    ('Rascal', ''),
    ('Moriceau', ''),
    ('Ben', 'Kemoun Hubert'),
    ('Taïeb', 'el Alj Ahmed'),
    ('Chraïbi', 'Driss'),
    ('Bauer', 'Jutta'),
    ('Ducos', 'Max'),
    ('Boucher', 'Michel'),
    ('Vaugelade', 'Anaïs'),
    ('Miège-Simansky', 'Denise'),
    ('Hédelin', 'Pascale'),
    ('Lacet', 'Yvonne'),
    ('Le', 'Hir'),
    ('Paoloni', 'Sonia'),
    ('Cathrine', 'Arnaud'),
    ('Conrad', 'Paul'),
    ('Escoffier', 'Michaël'),
    ('Browne', 'Anthony'),
    ('Solotareff', 'Grégoire'),
    ('Könnecke', 'Ole'),
    ('Fondation', 'Zakoura'),
    ('Charmeux', 'Evelyne'),
    ('Boujon', 'Claude'),
    ('Bouchard', 'André'),
    ('Fastier', 'Yann'),
    ('Carle', 'Eric'),
    ('Montardre', 'Hélène'),
    ('Hall', 'Kirsten'),
    ('Jonas', 'Anne'),
    ('Silverstein', 'Shel'),
    ('Troïanowski', 'Johan'),
    ('Queneau', 'Raymond'),
    ('Mari', 'Iela'),
    ('Vincensini', 'Paul'),
    ('Girardet', 'Sylvie'),
    ('Mau', 'Olivier'),
    ('Harcourt', 'Claire'),
    ('Coste', 'Nadia'),
    ('Zenzius', 'Pierre'),
    ('Lévy', 'Didier'),
    ('Dutruc-Rosset', 'Florence'),
    ('Ashbé', 'Jeanne'),
    ('Chic', 'Suzy'),
    ('Garralon', 'Claire'),
    ('Mathis', 'Jean-Marc'),
    ('Bruley', 'Marie-Claire'),
    ('Roxbee', 'Cox'),
    ('Salvi', 'Manuela'),
    ('Lejonc', 'Régis'),
    ('Chedid', 'Andrée'),
    ('Meunier', 'Henri'),
    ('Delye', 'Pierre'),
    ('Albert', 'Adrien'),
    ('Hugo', 'Victor'),
    ('Rathman', 'Peggy'),
    ('Poussier', 'Audrey'),
    ('Ramos', 'Mario'),
    ('Tanaka', 'Béatrice'),
    ('Agopian', 'Annie'),
    ('Varley', 'Susan'),
    ('Eeckhout', 'Emmanuelle'),
    ('Ramadier', ''),
    ('Lewis', 'Jean-Patrick'),
    ('Cadot', 'Colin'),
    ('Bourgeau', 'Vincent'),
    ('Van', 'Hout'),
    ('Doray', 'Malika'),
    ('Van', 'der'),
    ('Horowitz', 'Anthony'),
    ('Pinson', 'Zaza'),
    ('Sadat', 'Mandana'),
    ('Mollet', 'Charlotte'),
    ('Jadoul', 'Emile'),
    ('Paris', 'Hugues'),
    ('Pommaux', 'Yvan'),
    ('Chérer', 'Sophie'),
    ('Minhos', 'Martins'),
    ('Godeau', 'Vincent'),
    ('Cristina', 'Henriqueta'),
    ('Cone', 'Bryant'),
    ('Kerloc\'h', 'Jean'),
    ('Twain', 'Mark'),
    ('Ocelot', 'Michel'),
    ('Banks', 'Kate'),
    ('Aceval', 'Nora'),
    ('Thomas', 'Valérie'),
    ('Surget', 'Alain'),
    ('Le', 'Clézio'),
    ('Mourlevat', 'Jean'),
    ('Yeh', 'Chun-Liang'),
    ('Clément', 'Claude'),
    ('Pennart', 'Geoffroy'),
    ('John', 'Jory'),
    ('Dellamarre', 'Bellego'),
    ('Promeyrat', 'Coline'),
    ('Prévert', 'Jacques'),
    ('Blake', 'Quentin'),
    ('Lecointre', 'Jean'),
    ('Baer', 'Julien'),
    ('Van', 'Laan'),
    ('Ellwand', 'David'),
    ('Kang', 'Hye-sook'),
    ('Dumont', 'Jean-François'),
    ('Waddell', 'Martin'),
    ('Leprince', 'de'),
    ('Pef', ''),
    ('Lecaye', 'Alexis'),
    ('David', 'Gauthier'),
    ('David', 'François'),
    ('Elzbieta', ''),
    ('Deacon', 'Alexis'),
    ('Frier', 'Raphaële'),
    ('Barroux', ''),
    ('Cantais', 'Claire'),
    ('Nottet', 'Pascal'),
    ('Chen', 'Chih-Yuan'),
    ('Gouichoux', 'René'),
    ('Valckx', 'Catharina'),
    ('Ahlberg', 'Janet'),
    ('Hoban', 'Tana'),
    ('Perrault', 'Charles'),
    ('Grimm', 'Jakob'),
    ('Kasano', 'Yuchi'),
    ('Marais', 'Frédéric'),
    ('Le', 'Saux'),
    ('Lear', 'Edward'),
    ('Kuo', 'Fifi'),
    ('Crausaz', 'Anne'),
    ('Monari', 'Manuela'),
    ('Fort', 'Paul'),
    ('Morgenstern', 'Susie'),
    ('Géhin', 'Elisa'),
    ('Berner', 'Rotraut'),
    ('Dwell', 'Studio'),
    ('Ginsburg', 'Mirra'),
    ('Hutchins', 'Pat'),
    ('Hirsching', 'Nicolas'),
    ('Emberley', 'Ed'),
    ('Hill', 'Eric'),
    ('Grenier', 'Christian'),
    ('Lenain', 'Thierry'),
    ('Scotto', 'Thomas'),
    ('Weninger', 'Brigitte'),
    ('Cissé', 'Mamadou'),
    ('Valentin', 'Elsa'),
    ('Hahn', 'Cyril'),
    ('Matéo', '"Pepito,"'),
    ('Parot', 'Annelore'),
    ('Celli', 'Rose'),
    ('Servant', 'Stéphane'),
    ('Soutif', 'François'),
    ('Folika', ''),
    ('Jalibert', 'Maria'),
    ('Victor', 'Sylvain'),
    ('Courgeon', 'Rémi'),
    ('Herbauts', 'Anne'),
    ('Martin', 'Bill'),
    ('Bataille', 'Marion'),
    ('Zarcate', 'Catherine'),
    ('Veille', 'Eric'),
    ('Silei', 'Fabrizio'),
    ('Herbreteau', 'Gaston'),
    ('Diallo', 'Boubacar'),
    ('Manceau', 'Edouard'),
    ('Coat', 'Janik'),
    ('Henry', 'Jean-Marie'),
    ('Zemach', 'Margot'),
    ('Blake', 'Stéphanie'),
    ('Dreyfuss', 'Corinne'),
    ('Cousins', 'Lucy'),
    ('Goossens', 'Philippe'),
    ('Latyk', 'Olivier'),
    ('Denolle', 'Christel'),
    ('Adams', 'Pam'),
    ('Monloubou', 'Claire'),
    ('Konaté', 'Moussa'),
    ('Loyer', 'Anne'),
    ('Grave', 'Marie-Eve'),
    ('Cvach', 'Milos'),
    ('Gay', 'Michel'),
    ('Stehr', 'Frédéric'),
    ('Yonezu', 'Yusuke'),
    ('Kochka', ''),
    ('Voltz', 'Christian'),
    ('Brunet', 'Bénédicte'),
    ('Mélisou', 'Marie'),
    ('Van', 'Genechten'),
    ('Nakamura', 'Junko'),
    ('Klassen', 'Jon'),
    ('Ribeyron', 'Samuel'),
    ('Willems', 'Mo'),
    ('Andersen', 'Hans'),
    ('Carlain', 'Noé'),
    ('Grégoire', 'Caroline'),
    ('Khaldi-Bonnaud', 'Ahmed'),
    ('Turin', 'Joëlle'),
    ('Bisinski', 'Pierrick'),
    ('Lexau', 'Joan'),
    ('Dorléans', 'Marie'),
    ('Pittau', 'Francesco'),
    ('Lestrade', 'Agnès'),
    ('Giordano', 'Philip'),
    ('Bizouerne', 'Gilles'),
    ('Tallec', 'Olivier'),
    ('Brisou', 'Pellen'),
    ('Dexet', 'Hector'),
    ('Smith', 'Lane'),
    ('Zolotow', 'Charlotte'),
    ('Le', 'Craver'),
    ('Cumont', 'Louise-Marie'),
    ('Césaire', 'Aimé'),
    ('Sheldon', 'Dyan'),
    ('Gudule', ''),
    ('Malte', 'Marcus'),
    ('Nadja', ''),
    ('Fuentes', 'Roland'),
    ('Cousseau', 'Alex'),
    ('Rosen', 'Michael'),
    ('Angeli', 'May'),
    ('Kimiko', ''),
    ('Dr', 'Seuss'),
    ('Pianina', 'Vincent'),
    ('Poe', 'Edgar'),
    ('Cortey', 'Anne'),
    ('Simonsen', 'Michèle'),
    ('Tsarfati', 'Einat'),
    ('Longour', 'Michèle'),
    ('Fersen', 'Thomas'),
    ('Quatromme', 'France'),
    ('Duval', 'Elisabeth'),
    ('Chazerand', 'Emilie'),
    ('Gravett', 'Emily'),
    ('Gabriel', 'Pierre'),
    ('Kiffer', 'Christine'),
    ('Davies', 'Stephen'),
    ('Grindley', 'Sally'),
    ('Bertrand', 'Frédérique'),
    ('Cadier', 'Morgane'),
    ('Minfong', 'Ho'),
    ('Painset', 'Marie-France'),
    ('Alemagna', 'Béatrice'),
    ('Tullet', 'Hervé'),
    ('Griffon', 'A'),
    ('Bricout', 'Bernadette'),
    ('Devos', 'Lydia'),
    ('Monfreid', 'Dorothée'),
    ('Nicolas', 'Christophe'),
    ('Guérif', 'Andy'),
    ('Wlodarczyk', 'Isabelle'),
    ('Dorin', 'Philippe'),
    ('Chabas', 'Jean-François'),
    ('Mélano', 'Olivier'),
    ('Morin', 'Patrick'),
    ('Daniau', 'Marc'),
    ('Shulevitz', 'Uri'),
    ('Vidal', 'Séverine'),
    ('Kipling', 'Rudyard'),
    ('Fehr', 'Daniel'),
    ('Vivardi', 'Liuna'),
    ('Cosneau', 'Olivia'),
    ('Pereira', 'Marjolaine'),
    ('Dé', 'Claire'),
    ('Tardieu', 'Jean'),
    ('Havard', 'Christian'),
    ('Coran', 'Pierre'),
    ('Dumas', 'Philippe'),
    ('Yzac', 'Adeline'),
    ('Lü', 'Yuan'),
    ('Cevin', 'Evelyne'),
    ('Ionesco', 'Eugène'),
    ('Gaussel', 'Alain'),
    ('Belhalfaoui', 'Hamou'),
    ('Gougaud', 'Henri'),
    ('Féron', 'Romano'),
    ('Causse', 'Rolande'),
    ('Gendrin', 'Catherine'),
    ('Gripari', 'Pierre'),
    ('Cadier', 'Florence'),
    ('Musa', 'Hassan'),
    ('Condominas', 'Baptiste'),
    ('Laporte', 'Michel'),
    ('Guillaume', 'Olive'),
    ('Darwiche', 'Jihad'),
    ('Delpeuch', 'Régis'),
    ('"Bryan,"', '"Muzi,"'),
    ('Faraggi', 'Anne'),
    ('Sternberg', 'Jacques'),
    ('Mayo', 'Margaret'),
    ('Descamps', 'Dominique'),
    ('Mezquita', 'Roberto'),
    ('Bertrand', 'Pierre'),
    ('UG', 'Philippe'),
    ('Allancé', 'Mireille'),
    ('Brun', 'Cosme'),
    ('Torres', 'Cimarusti'),
    ('Kérillis', 'Hélène'),
    ('Gil', 'Isabelle'),
    ('Dahl', 'Roald'),
    ('Schädlich', 'Hans'),
    ('Barthélémy', 'Mimi'),
    ('Craipeau', 'Jean-Loup'),
    ('Marie', 'et'),
    ('London', 'Jack'),
    ('Roubaud', 'Jacques'),
    ('Nickl', 'Peter'),
    ('Sendak', 'Maurice'),
    ('Bouteloup', 'Philippe'),
    ('"Kochka,"', 'd\'après'),
    ('Grimm', 'Jakob'),
    ('Kunhardt', 'Dorothy'),
    ('Boisrobert', 'et'),
    ('Perreault', 'Mélanie'),
    ('Grosz', 'Pierre'),
    ('Massini', 'Anaïs'),
    ('Tamarin', 'Annette'),
    ('Marceau', 'Fani'),
    ('Roumiguière', 'Cécile'),
    ('Martin', 'Simon'),
    ('Alline', 'Christophe'),
    ('Eluard', 'Paul'),
    ('Mbaye', 'Ndaak'),
    ('Bauer', 'Marion'),
    ('Tawa', 'Kouam'),
    ('Holzwarth', 'Werner'),
    ('Gunzig', 'Thomas'),
    ('Teckentrup', 'Britta'),
    ('Defourny', 'Michel'),
    ('Baronian', 'Jean-Baptiste'),
    ('Ramstein', 'Anne-Margot'),
    ('Sanders', 'Alex'),
    ('Costes', 'Olivier'),
    ('Perrin', 'Julien'),
    ('Gendre', 'Nathalie'),
    ('Leblanc', 'Catherine'),
    ('Claveloux', 'Nicole'),
    ('Weiss', 'Anne'),
    ('Poslaniec', 'Christian'),
    ('Rateau', 'Dominique'),
    ('Cathalo', 'Georges'),
    ('Bachelet', 'Gilles'),
    ('Detamlbel', 'Régine'),
    ('Nadaud', 'Claire'),
    ('Dubost', 'Louis'),
    ('Simler', 'Isabelle'),
    ('Vian', 'Boris'),
    ('Carminati', 'Chiara'),
    ('Bertier', 'Anne'),
    ('Pochard', 'Mireille'),
    ('Lacor', 'Agnès'),
    ('Scelles', 'Millie'),
    ('Wormell', 'Chris'),
    ('Kowarsky', 'Didier'),
    ('Leo', 'Patrice'),
    ('Kerloc\'h', 'Jean-Pierre'),
    ('Major', 'Lenia'),
    ('Dubuc', 'Marianne'),
    ('Laâbi', 'Jocelyne'),
    ('Mac', 'Bratney'),
    ('Muller', 'Gerda'),
    ('Armellini', 'Chiara'),
    ('Dang', 'Khoa'),
    ('Sall', 'Mamadou'),
    ('Green', 'Ilya'),
    ('Roland', 'Claudine'),
    ('Barton', 'Byron'),
    ('Malineau', 'Jean'),
    ('M', 'Serres'),
    ('Gutleben', 'Muriel'),
    ('Frasson-Cochet', 'Agathe'),
    ('Tixier', 'Jean'),
    ('Brown', 'Ruth'),
    ('Erlbruch', 'Wolf'),
    ('Cognet', 'Lilas'),
    ('Brunelet', 'Madeleine'),
    ('Lilienthal', 'Henri'),
    ('Villard', 'Marc'),
    ('Kitzing', 'Constanze'),
    ('Leynaud', 'Johan'),
    ('Vignal', 'Hélène'),
    ('Yeoman', 'John'),
    ('Soupault', 'Philippe'),
    ('Ivanovitch', 'Lair'),
    ('Delval', 'Marie'),
    ('Joly', 'Fanny'),
    ('Legrand', 'Marie'),
    ('Jandl', 'Ernst'),
    ('Steig', 'William'),
    ('Mathis', ''),
    ('Guillbaud', 'Luce'),
    ('Marsol', 'Manuel'),
    ('Tenor', 'Arthur'),
    ('Burningham', 'John'),
    ('Knowles', 'Sheena'),
    ('Proeng', 'Pich'),
    ('Kebrety', 'Maryam'),
    ('Rutten', 'Mélanie'),
    ('Leroy', 'Hélène'),
    ('Mac', 'Kee'),
    ('Petit', 'Michèle'),
    ('Cuvellier', 'Vincent'),
    ('Yolen', 'Jane'),
    ('Tae-Jun', 'Lee'),
    ('Clément', 'Claire'),
    ('Brulet', 'Gilles'),
    ('Vast', 'Emilie'),
    ('Gellé', 'Albane'),
    ('Hakim', 'Miloud'),
    ('Davies', 'Benji'),
    ('Roy', 'Claude'),
    ('Du', 'Faÿ'),
    ('Bruley', 'M.'),
    ('Kiko', ''),
    ('Sénégas', 'Stéphane'),
    ('Battut', 'Eric'),
    ('Vincent', 'Gabrielle'),
    ('Joie', 'par'),
    ('Obin', 'Manfeï'),
    ('Nadaus', 'Roland'),
    ('Maubille', 'Jean'),
    ('Pfeiffer', 'Virginie'),
    ('Collectif', 'enfants'),
    ('Stella', 'Gaia'),
    ('Hole', 'Stian'),
    ('Van', 'der'),
    ('Pennac', 'Daniel'),
    ('Fontenaille', 'Elise'),
    ('Lobel', 'Arnold'),
    ('Poirot-Chérif', 'Sandra'),
    ('Slater', 'Dashka'),
    ('Pintus', 'Eric'),
    ('Ohmura', 'Tomoko'),
    ('Iwamura', 'Kazuo'),
    ('Dubray', 'Anne-Thérèse'),
    ('Minne', 'Brigitte'),
    ('Lacasa', 'Gomez'),
    ('Desplat-Duc', 'Anne-Marie'),
    ('Bessard', 'Sylvie'),
    ('Szac', 'Murielle'),
    ('Joire', 'Françoise'),
    ('Place', 'François'),
    ('Goble', 'Paul'),
    ('Pelot', 'Dylan'),
    ('McDermott', 'Gerald'),
    ('Leroy', 'Jean'),
    ('Bertron', 'Martin'),
    ('Fugier', 'Laurence'),
    ('Verdelet-Lamare', 'Annie'),
    ('Heurté', 'Yves'),
    ('Godard', 'Alex'),
    ('Mounier', 'Fabienne'),
    ('Stehr', 'Gérald'),
    ('Lionni', 'Leo'),
    ('Doremus', 'Gaëtan'),
    ('Baret', 'Idatte'),
    ('Nicodème', 'Béatrice'),
    ('Ouyessad', 'Myriam'),
    ('Lang', 'Suzanne'),
    ('Chen', 'Jiang'),
    ('Strasser', 'Susanne'),
    ('Hoestlandt', 'Jo'),
    ('Greef', 'Sabine'),
    ('Hudrisier', 'Cécile'),
    ('Noguès', 'Jean-Côme'),
    ('Hikmet', 'Hazim'),
    ('Bonnet', ''),
    ('Amrouche', 'Taos'),
    ('Astolfi', 'Claire'),
    ('Lechermeier', 'Philippe'),
    ('Orsenna', 'Erik'),
    ('Fontanel', 'Béatrice'),
    ('Le', 'Gall'),
    ('Epin', 'Bernard'),
    ('Graves', 'Robert'),
    ('Bernard', 'Fred'),
    ('Kubler', 'Laurence'),
    ('Balpe', 'Anne'),
    ('Parlange', 'Adrien'),
    ('Zoboli', 'Giovanna'),
    ('Gastaut', 'Charlotte'),
    ('Bernstein', 'Galia'),
    ('Colombet', 'Julie'),
    ('Rossi', 'Annie'),
    ('Massenot', 'Véronique'),
    ('Elias', 'Jean'),
    ('Brown', 'Ken'),
    ('Van', 'de'),
    ('Durand', 'Jean'),
    ('Vidal', 'Francine'),
    ('Timmers', 'Leo'),
    ('Tolstoï', 'Alexis'),
    ('Muzo', ''),
    ('Guillevic', ''),
    ('Swift', 'Jonathan'),
    ('Collectif', 'écoliers'),
    ('Cros', 'Charles'),
    ('Lhomme', 'Sandrine'),
    ('Levine', 'Ellen'),
    ('Laffon', 'Martine'),
    ('Bailly', 'Maître'),
    ('Charlip', 'Rémy'),
    ('Brunhoff', 'Jean'),
    ('Diament', 'Nic'),
    ('Munari', 'Bruno'),
    ('Baltscheit', 'Martin'),
    ('Labourdique', 'Jacques'),
    ('Ben', 'Soussan'),
    ('Cameron', 'Ann'),
    ('Farilli', 'Elena'),
    ('Deneux', 'Xavier'),
    ('Heitz', 'Bruno'),
    ('Domergue', 'Agnès'),
    ('Dorémus', 'Gaétan'),
    ('Barrett', 'Judi'),
    ('Go', 'Hyejin'),
    ('Riddell', 'Chris'),
    ('Mayer', 'Mercer'),
    ('Trouillot', 'Evelyne'),
    ('Salisbury', 'Martin'),
    ('Neeman', 'Sylvie'),
    ('Lorant-Jolly', 'Annick'),
    ('Joffre', 'Véronique'),
    ('Attiogbé', 'Magali'),
    ('', ''),
    ('Estellon', 'Pascale'),
    ('Becker', 'Aaron'),
    ('Uman', 'Jennifer/Vidal'),
    ('Ruel', 'Adeline'),
    ('Nières-Chevrel', 'Isabelle'),
    ('Burgaud', 'Pierre'),
    ('Mercier', 'Julie'),
    ('Louzon', 'Camille'),
    ('Poitras', 'Anique'),
    ('Chèze', 'Bernard'),
    ('Baum', 'Gilles'),
    ('McKinnon', 'Heidi'),
    ('Mosconi', 'Patrick'),
    ('Thévenet', 'Séverine'),
    ('Marc', 'Solal'),
    ('De', 'Rockere'),
    ('Stevenson', 'RL'),
    ('Mezzalama', 'Chiara'),
    ('Palluy', 'Christine'),
    ('Pouyet', 'Marc'),
    ('Di', 'Mascio'),
    ('Donnio', 'Sylviane'),
    ('Guettier', 'Bénédicte'),
    ('Guillotte', 'Eric'),
    ('Geffen', 'Yehonatan'),
    ('Bayar', 'Michèle'),
    ('Mazard', 'Claire'),
    ('Thiès', 'Paul'),
    ('Havette', 'Servane'),
    ('Ross', 'Tony'),
    ('Moncomble', 'Gérard'),
    ('Misslin', 'Sylvie'),
    ('Baron', 'Marc'),
    ('Musa', 'Patricia'),
    ('Thiry', 'Marie-Eve'),
    ('Gypteau', 'Nadia'),
    ('Valckx', 'Catherine'),
    ('Delafosse', 'Claude'),
    ('Wagner', 'Jenny'),
    ('Sarno', 'Hélène'),
    ('Taback', 'Simms'),
    ('Charpentreau', 'Jacques'),
    ('Diaz', 'Marie'),
    ('Safirstein', 'Julie'),
    ('Hannappe', 'David'),
    ('Kanor', 'Fabienne'),
    ('Fine', 'Anne'),
    ('Wilsdorf', 'Anne'),
    ('Selena', 'Elena'),
    ('Bialestowski', 'Gérard'),
    ('Lautru', 'Michel'),
    ('Ibn', 'el'),
    ('Inkpen', 'Mick'),
    ('Lalinon', 'Gbado'),
    ('Boel', 'Anne'),
    ('Benjelloun', 'Saïd'),
    ('O\'Byrne', 'Nicola'),
    ('Delacroix', 'Sibylle'),
    ('François', 'André'),
    ('Nguyên', 'Viet'),
    ('Pinfold', 'Levi'),
    ('Cherisey', 'Thérèse'),
    ('Clavel', 'Bernard'),
    ('Kraus', 'Robert'),
    ('Lecaye', 'Olga'),
    ('Dros', 'Imme'),
    ('Kessler', 'Frédéric'),
    ('Berchoud', 'Bruno'),
    ('Held', 'Jacqueline'),
    ('Fortier', 'Natali'),
    ('Pinkey', 'Jerry'),
    ('Chenouf', 'Yvanne'),
    ('Boulaire', 'Cécile'),
    ('Escarpit', 'Denise'),
    ('Claverie', 'Jean'),
    ('Louis', 'Catherine'),
    ('Khémir', 'Nacer'),
    ('Harrison', 'David'),
    ('Duprat', 'Guillaume'),
    ('Berner', 'Rotraut'),
    ('Bonnafé', 'Marie'),
    ('Buguet', 'Anne'),
    ('Bernos', 'Clotilde'),
    ('Jaffrennou', 'Yves'),
    ('La', 'Fontaine'),
    ('Choux', 'Nathalie'),
    ('Robillard', 'Jean-Marie'),
    ('Picouly', 'Daniel'),
    ('S.A.H.G.Y.K.O.D.', ''),
    ('Lenglet', 'Maud'),
    ('Khoury', 'Gatha'),
    ('Mets', 'Alan'),
    ('Audren', ''),
    ('Hinckel', 'Florence'),
    ('Witek', 'Jo'),
    ('Mabanckou', 'Alain'),
    ('Nicolino', 'Fabrice'),
    ('Janisch', 'Hans'),
    ('Blanpain', 'Jean-Pierre'),
    ('Noiret', 'Gérard'),
    ('Ichikawa', 'Satomi'),
    ('Clément', 'Frédéric'),
    ('Utton', 'Peter'),
    ('Tashlin', 'Frank'),
    ('Moraes', 'Vinicius'),
    ('Swanson', 'Susan'),
    ('Moore', 'Inga'),
    ('Bielinsky', 'Claudia'),
    ('Joubert', 'Jean'),
    ('Moeyaert', 'Bart'),
    ('Laugausie', 'Justine'),
    ('Nivola', 'Claire'),
    ('Dorémus', 'Gaëtan'),
    ('Higgins', 'Ryan'),
    ('Zidrou', ''),
    ('Jaffé', 'Laura'),
    ('Maussion', 'Anne'),
    ('Bougeault', 'Pascale'),
    ('Carter', 'Noëlle'),
    ('Schneider', 'Christine'),
    ('Fournier', 'Jacques'),
    ('Glondoumé', 'Sika'),
    ('Diallo', 'Mamadou'),
    ('Cauwe', 'Lucie'),
    ('Colmont', 'Marie'),
    ('Daeninckx', 'Didier'),
    ('Aimé', 'Marcel'),
    ('Adriansen', 'Sophie'),
    ('Condominas', 'Laurent'),
    ('Rice', 'Hélène'),
    ('McNeil', 'David'),
    ('Watanabe', 'Michio'),
    ('Barbarou', 'Lucienne'),
    ('Perrin', 'Martine'),
    ('Yagoubi', 'Valérie'),
    ('Ruiz', 'Olivia'),
    ('Brenman', 'Ilan'),
    ('Korkos', 'Alain'),
    ('Lloyd', 'Sam'),
    ('Robberecht', 'Thierry'),
    ('Kalan', 'Robert'),
    ('Lagerlof', 'Selma'),
    ('Rueda', 'Claudia'),
    ('Ovide', ''),
    ('Aït', 'Ahmed'),
    ('Ebohéa', 'Marie'),
    ('Watanabe', 'Issa'),
    ('Flouw', 'Benjamin'),
    ('Diallo', 'Muriel'),
    ('Barman', 'Adrienne'),
    ('ARPLE', ''),
    ('Leduc', 'Daniel'),
    ('Pang', 'Miguel'),
    ('Kitamura', 'Satochi'),
    ('Laffon', 'Caroline'),
    ('Cantin', 'Marc'),
    ('Perret', 'Delphine'),
    ('Chabbert', 'Ingrid'),
    ('Bahar', 'Sunar'),
    ('Vernette', 'Véronique'),
    ('Titus', ''),
    ('Rouzé', 'Marina'),
    ('Fauliot', 'Pascal'),
    ('Mereu', 'Agata'),
    ('El', 'Fathi'),
    ('Schwarz', 'Annelies'),
    ('Ka', 'Olivier'),
    ('Vasconcelos', 'José'),
    ('Wisniewski', 'Gaya'),
    ('Demasse-Pottier', 'Stéphanie'),
    ('Kasza', 'Keiko'),
    ('Wall', 'Fiona'),
    ('Miyamoto', 'Tadao'),
    ('Legendre', 'Françoise'),
    ('Daufresne', 'Michelle'),
    ('Delecroix', 'Hanieh'),
    ('Silloray', ''),
    ('Zullo', 'Germano'),
    ('Claudel', 'Philippe'),
    ('Wiesner', 'David'),
    ('Cannard', 'Edmée'),
    ('Pegorier', 'Saralisa'),
    ('Gay-Para', 'Praline'),
    ('Bichonnier', 'Henriette'),
    ('Ayadi', 'Boubakeur'),
    ('Propp', 'Vladimir'),
    ('Léger-Cresson', 'Nathalie'),
    ('Boudet', 'Alain'),
    ('Guenoun', 'Joël'),
    ('Lecaye', 'Emmanuel'),
    ('Villiot', 'Bernard'),
    ('Desnouveaux', 'Florence'),
    ('Sommerset', 'Mark'),
    ('Golan', 'Haji'),
    ('Brouillard', 'Anne'),
    ('Kinsa', 'Gabriel'),
    ('Ben', 'Soussan'),
    ('Maunoury', 'Jean'),
    ('Weulersse', 'Odile'),
    ('Birant', 'Mehmet'),
    ('Charlat', 'Benoît'),
    ('Muratet', 'Louis'),
    ('Leblond', 'Michaël'),
    ('Beauvois', 'Delphine'),
    ('Olive', 'Guillaume'),
    ('Watt', 'Fiona'),
    ('Snicket', 'Lemony'),
    ('Mandelbaum', 'Pili'),
    ('Duval', 'Isabelle'),
    ('Hellings', 'Colette'),
    ('Bone', 'Betty'),
    ('Béziat', 'Julien'),
    ('Aribaud', 'Jean'),
    ('Jacques', 'Benoît'),
    ('Péghaire', 'Vincent'),
    ('Maudet', 'Mathieu'),
    ('Boisrobert', 'Anouck'),
    ('Beaude', 'PM.'),
    ('Sala', 'Felicita'),
    ('Bianco-Levin', 'Nicolas'),
    ('Ressouni', 'Demigneux'),
    ('Dayre', 'Valérie'),
    ('Cendrars', 'Blaise'),
    ('Stravinsky', 'Igor'),
    ('Poirot-Cherif', 'Sandra'),
    ('Bermond', 'Monique'),
    ('Vincent', 'François'),
    ('Roux', 'Julien'),
    ('Falconer', 'Ian'),
    ('Dunrea', 'Olivier'),
    ('Arrou-Vignod', 'Jean'),
    ('Jonquet', 'Thierry'),
    ('Simard', 'Eric'),
    ('Séguy', 'Fabienne'),
    ('Florian', 'Mélanie'),
    ('Rayna', 'S'),
    ('Norge', ''),
    ('Bunting', 'E.'),
    ('Doyle', 'Roddy'),
    ('Pizzoli', 'Greg'),
    ('Ravishankar', 'A'),
    ('Corazza', 'Linda'),
    ('Dupuy', 'Dunier'),
    ('Tupera', 'Tupera'),
    ('Alix', 'Cécile'),
    ('Yumoto', 'Kazumi'),
    ('Lavie', 'Oren'),
    ('Alonso', 'Jose'),
    ('Klausmeier', 'Klaus'),
    ('Di', 'Giovanni'),
    ('Ovaldé', 'Véronique'),
    ('Mrzyk', 'et'),
    ('Clavel', 'Fabien'),
    ('Texier', 'Ophélie'),
    ('Allen', 'Nicholas'),
    ('Touzeil', 'Jean'),
    ('Salinas', 'Veronica'),
    ('Le', 'Néouanic'),
    ('Helft', 'Claude'),
    ('Mwankumi', 'Dominique'),
    ('Desnos', 'Robert'),
    ('Ninie', ''),
    ('Dalrymple', 'Jennifer'),
    ('Sanders', 'Louis'),
    ('Loucou', 'Michel'),
    ('Dubois', 'CK'),
    ('Robert', 'Nadine'),
    ('Matéo', 'Pepito'),
    ('Monsabert', 'A.-Sophie'),
    ('Fournier', ''),
    ('Climo', 'Liz'),
    ('Giono', 'Jean'),
    ('Pinguilly', 'Yves'),
    ('Duve', 'Catherine'),
    ('Proust', 'Marcel'),
    ('Le', 'Saux'),
    ('Hugo', 'Hector'),
    ('Kamoun', 'Martine'),
    ('Macri', 'Giancarlo'),
    ('Duquennoy', 'Jacques'),
    ('Falorsi', 'Ilaria'),
    ('Saint-Exupéry', 'Antoine'),
    ('Verluca', 'Constance'),
    ('Mirman', 'Anne'),
    ('Wintrebert', 'Joëlle'),
    ('Allemand', 'Sylvie'),
    ('Weaver', 'Jo'),
    ('Chausson', 'Julia'),
    ('Carrier', 'Isabelle'),
    ('Grunelius-Hollard', 'Agnès'),
    ('Grunelius', 'Hollard'),
    ('Voutch', ''),
    ('Corr', 'Christopher'),
    ('Buteau', 'Gaëlle'),
    ('Jolibois', 'Christian'),
    ('Moüy', 'Iris'),
    ('Wood', 'Don'),
    ('Dubé', 'Pierrette'),
    ('Vinet', 'Sofie'),
    ('Aladjidi', 'Virginie'),
    ('Montse', 'Gisbert'),
    ('Holmelund', 'Minarik'),
    ('Dubois', 'Jean-Claude'),
    ('Hee-na', 'Baek'),
    ('Altan', ''),
    ('Destours', 'Christine'),
    ('Claire', 'Céline'),
    ('Dubois', 'Claude'),
    ('Tolstoï', 'Léon'),
    ('Iwamura', 'Kasuo'),
    ('Girardet', 'et'),
    ('Rogier', 'Françoise'),
    ('Pastoureau', 'Michel'),
    ('Oppel', 'Jean-Luc'),
    ('Rocard', 'Anne'),
    ('Jay', 'Françoise'),
    ('Brisac', 'Geneviève'),
    ('Backès', 'Michel'),
    ('Perez', 'Sébastien'),
    ('Bathany', 'Claude'),
    ('Pinto', 'Deborah'),
    ('Henderson', 'Kathy'),
    ('Pavlenko', 'Marie'),
    ('Barcilon', 'Marianne'),
    ('Moka', ''),
    ('Bergèse', 'Paul'),
    ('Soletti', 'Pierre'),
    ('Hérédia', 'Géraldine'),
    ('Magnier', 'Bernard'),
    ('Mardam-Bey', 'Farouk'),
    ('Arraga', 'de'),
    ('Lévêque', 'Valérie'),
    ('Grant', 'Joan'),
    ('Storr', 'Catherine'),
    ('Badescu', 'Ramona'),
    ('Soleil', 'Emilie'),
    ('Mari', 'Iela'),
    ('Sorman', 'Joy'),
    ('Vissière', 'Sophie'),
    ('Escudié', 'René'),
    ('Loufane', ''),
    ('Coran', 'Pierre'),
    ('Da', 'Silva'),
    ('Pierpont', 'Nathalie'),
    ('Hobson', 'Bruce'),
    ('Lila', 'Prap'),
    ('"Bonnafé,"', '"Cabrero,"'),
    ('Felix', 'Lucie'),
    ('Moissard', 'Boris'),
    ('Chausse', 'Sylvie'),
    ('Benameur', 'Jeanne'),
    ('Chen', 'Jian'),
    ('Curatolo', 'Justine'),
    ('La', 'Villefromoit'),
    ('Félix', 'Lucie'),
    ('Delessert', 'Etienne'),
    ('Naumann-Villemin', 'Christine'),
    ('Bettelheim', 'Bruno'),
    ('Bigot', 'Gigi'),
    ('Olten', 'Manuela'),
    ('Ubac', 'Claire'),
    ('Dek', 'Maria'),
    ('Gréban', 'Quentin'),
    ('Bonotaux', 'Gilles'),
    ('Cabrera', 'Jane'),
    ('Morel', 'François'),
    ('Ruillier', 'Jérôme'),
    ('Jenkins', 'Steve'),
    ('Joslin', 'Sesyle'),
    ('Machado', 'Ana'),
    ('Santini', 'Bertrand'),
    ('Gabrielle', 'Vincent'),
    ('Teyssèdre', 'Fabienne'),
    ('Aubrun', 'Claudine'),
    ('Périgot', 'Joseph'),
    ('Gratias', 'Claire'),
    ('Némo', 'et'),
    ('Bresner', 'Lisa'),
    ('Kemmeter', 'Philippe'),
    ('Trédez', 'Emmanuel'),
    ('Besnier', 'Michel'),
    ('Manfeï', 'Obin'),
    ('Daywalt', 'Drew'),
    ('Skarmeta', 'Antonio'),
    ('Alibeu', 'Géraldine'),
    ('Hayashi', 'Emiri'),
    ('Lucia', 'Scuderi'),
    ('Steff', ''),
    ('Quintane', 'Nathalie'),
    ('Bickford-Smith', 'Coralie'),
    ('Ducatteau', 'Florence'),
    ('Battault', 'Paule'),
    ('Char', 'René'),
    ('Janikovszky', 'Eva'),
    ('Luciani', 'Jean-Luc'),
    ('Brami', 'Elizabeth'),
    ('Sakaï', 'Komako'),
    ('Bonniol', 'Magali'),
    ('Rimbaud', 'Arthur'),
    ('Coran', '"Pierre,"'),
    ('Turin', 'Adela'),
    ('Sabbagh', 'Clémence'),
    ('Voigt', 'Marie'),
    ('Pourquié', 'Bernadette'),
    ('Cohen-Janca', 'Irène'),
    ('Roger', 'Marie'),
    ('Blexbolex', ''),
    ('Issa', ''),
    ('Cole', 'Babette'),
    ('Dio', 'Mohamed'),
    ('Dorin', 'Perrine'),
    ('Tzannes', ''),
    ('Mebs', 'Gudrun'),
    ('Sarrazin', 'Jean-Charles'),
    ('Matsuoka', 'Tatsuhide'),
    ('Hughes', 'Emily'),
    ('Aubert', 'Brigitte'),
    ('Todd-Stanton', 'Joe'),
    ('Trotereau', 'Anne'),
    ('Clayton', 'Junior'),
    ('Guibert', 'Françoise'),
    ('Koenig', 'Viviane'),
    ('Spier', 'Paul'),
    ('Monnereau', 'Michel'),
    ('Larreula', 'Enric'),
    ('Caylou', 'Véronique'),
    ('Stein', 'Mathilde'),
    ('Hindenoch', 'Michel'),
    ('Larizza', 'Olivier'),
    ('Schickel', 'Emilie'),
    ('Japon', ''),
    ('Bobe', 'Françoise'),
    ('Lambersy', 'Werner'),
    ('Paris', 'Cécile'),
    ('Crosbie', 'Duncan'),
    ('Cardon', 'Laurent'),
    ('Hoban', 'Kristy'),
    ('Van', 'de'),
    ('Pappa', 'Rodoula'),
    ('Herbert', 'Scott'),
    ('Roman', 'Nadia'),
    ('Coat', 'Janie'),
    ('Kipling/Chaliand', 'Gérard'),
    ('Cobb', 'Rebecca'),
    ('Epanya', 'Christian'),
    ('Ferrer', 'Nino'),
    ('Raisson', 'Gwendoline'),
    ('Naumann', 'Villemin'),
    ('Kerr', 'Judith'),
    ('Gagnon', 'Nathalie'),
    ('Lodge', 'Jo'),
    ('Willer', 'Thérèse'),
    ('Armange', 'Xavier'),
    ('Daladier', 'Nathalie'),
    ('Duda', 'Christian'),
    ('Morrison', 'Toni'),
    ('Elschner', 'Géraldine'),
    ('Wise', 'Brown'),
    ('Misraki', ''),
    ('Pernaudet', 'Christophe'),
    ('Agence', 'Quand'),
    ('Cooke', 'Trish'),
    ('Legrand', 'Gilbert'),
    ('Colombani', 'Laetitia'),
    ('Santangelo', 'Eugène'),
    ('Lafonta', 'Isabelle'),
    ('Van', 'Zeveren'),
    ('Vassallo', 'Rose-Marie'),
    ('Rivoal', 'Marine'),
    ('Dufresne', 'Didier'),
    ('Oster', 'Christian'),
    ('Pontavice', 'Clémentine'),
    ('Sanchez', 'Virginie'),
    ('Gueyfier', 'Judith'),
    ('Schnitzberger', 'Simon'),
    ('Galea', 'Claudine'),
    ('Urial', ''),
    ('Seeber', 'Dorothea'),
    ('Buzzeo', 'Toni'),
    ('Aubrun', 'Claude'),
    ('Benoist', 'Cécile'),
    ('Chavepeyer', 'I'),
    ('Supervielle', 'Jules'),
    ('Su', 'Dong'),
    ('Goytisolo', 'José'),
    ('Ipcar', 'Dahlov'),
    ('Cazals', 'Thierry'),
    ('Voake', 'Charlotte'),
    ('Yi', 'Gee'),
    ('Roux', 'Delphine'),
    ('Kaïteris', 'Constantin'),
    ('Cabaco', 'Silvia'),
    ('Nessmann', 'Philippe'),
    ('Simon', 'Quitterie'),
    ('Shingu', 'Susumu'),
    ('Crews', 'Donald'),
    ('Malnuit', 'Françoise'),
    ('Bertrand', 'Micheline'),
    ('Billiard', 'Jean-Michel'),
    ('Mallard', 'Marie-Constance'),
    ('Brière', 'Joëlle'),
    ('Henkes', 'Kevin'),
    ('Gibert', 'Bruno'),
    ('Garth', 'Williams'),
    ('Church', 'Caroline'),
    ('Devaux', 'Stéfany'),
    ('Kalioujny', 'Pauline'),
    ('Cagnard', 'Dominique'),
    ('Pigois', 'Melissa'),
    ('Alméras', 'Arnaud'),
    ('Hale', 'Nathan'),
    ('Lee', 'Suzy'),
    ('Merleau-Ponty', 'Claire'),
    ('Mankour', 'Mohamed'),
    ('Fetjö', 'Raphaël'),
    ('Guillon', 'Camille'),
    ('Angelou', 'Maya'),
    ('Bayard', 'Michèle'),
    ('Galvin', 'Michel'),
    ('Thydell', ''),
    ('Dumortier', 'David'),
    ('Blegvard', 'E'),
    ('Ollivier', 'Mikaël'),
    ('Seong-eun', 'Kim'),
    ('Van', 'Biesen'),
    ('Prévot', 'Franck'),
    ('Grelet', 'Isabella'),
    ('Gravel', 'François'),
    ('Dodeller', 'Sylvie'),
    ('Peynot', 'Patrick'),
    ('Whelan', 'Gloria'),
    ('Lee', 'Hyun-kyeong'),
    ('Derouen', 'Jean-Marc'),
    ('Diéterlé', 'Nathalie'),
    ('Dieterlé', 'Nathalie'),
    ('Zimet', 'Ben'),
    ('Ehlert', 'Lois'),
    ('Barbeau', 'Philippe');



// Insertion des éditeurs ; 

INSERT INTO publisher (first_name) VALUES ('A pas de loups');
INSERT INTO publisher (first_name) VALUES ('A2MIMO');
INSERT INTO publisher (first_name) VALUES ('ABC Melody');
INSERT INTO publisher (first_name) VALUES ('ACCES');
INSERT INTO publisher (first_name) VALUES ('Actes Sud');
INSERT INTO publisher (first_name) VALUES ('Actes sud junior');
INSERT INTO publisher (first_name) VALUES ('Aedis');
INSERT INTO publisher (first_name) VALUES ('Albin Michel');
INSERT INTO publisher (first_name) VALUES ('Albin Michel jeunesse');
INSERT INTO publisher (first_name) VALUES ('Aldéran édition');
INSERT INTO publisher (first_name) VALUES ('Alice');
INSERT INTO publisher (first_name) VALUES ('Alice jeunesse');
INSERT INTO publisher (first_name) VALUES ('Alkindi');
INSERT INTO publisher (first_name) VALUES ('Almaterra');
INSERT INTO publisher (first_name) VALUES ('Alyssa');
INSERT INTO publisher (first_name) VALUES ('Amaterra');
INSERT INTO publisher (first_name) VALUES ('AND');
INSERT INTO publisher (first_name) VALUES ('ANLCI');
INSERT INTO publisher (first_name) VALUES ('Après la lune jeunesse');
INSERT INTO publisher (first_name) VALUES ('Assoc fr pour la lecture');
INSERT INTO publisher (first_name) VALUES ('Assoc. Paris-musées');
INSERT INTO publisher (first_name) VALUES ('Association Afflux');
INSERT INTO publisher (first_name) VALUES ('Atelier du poisson soluble');
INSERT INTO publisher (first_name) VALUES ('Atelier du poissson soluble');
INSERT INTO publisher (first_name) VALUES ('Atelier du Scribe');
INSERT INTO publisher (first_name) VALUES ('Auto production');
INSERT INTO publisher (first_name) VALUES ('Autrement');
INSERT INTO publisher (first_name) VALUES ('Autrement jeunesse');
INSERT INTO publisher (first_name) VALUES ('Balivernes');
INSERT INTO publisher (first_name) VALUES ('Balzane');
INSERT INTO publisher (first_name) VALUES ('Bayard');
INSERT INTO publisher (first_name) VALUES ('Bayard jeunesse');
INSERT INTO publisher (first_name) VALUES ('Belin');
INSERT INTO publisher (first_name) VALUES ('Belin jeunesse');
INSERT INTO publisher (first_name) VALUES ('Belize');
INSERT INTO publisher (first_name) VALUES ('Benoît Jacques');
INSERT INTO publisher (first_name) VALUES ('Benoît Jacques Books');
INSERT INTO publisher (first_name) VALUES ('bib.municip Paris');
INSERT INTO publisher (first_name) VALUES ('Bibliothèque de Toulouse');
INSERT INTO publisher (first_name) VALUES ('Bilboquet');
INSERT INTO publisher (first_name) VALUES ('Biscoto');
INSERT INTO publisher (first_name) VALUES ('BNF');
INSERT INTO publisher (first_name) VALUES ('Bruno Doucey');
INSERT INTO publisher (first_name) VALUES ('Bulles de savon');
INSERT INTO publisher (first_name) VALUES ('Cadex');
INSERT INTO publisher (first_name) VALUES ('Cahiers du CRILJ n° 10');
INSERT INTO publisher (first_name) VALUES ('Cahiers du CRILJ n° 3');
INSERT INTO publisher (first_name) VALUES ('Cahiers du CRILJ n° 4');
INSERT INTO publisher (first_name) VALUES ('Cahiers du CRILJ n° 5');
INSERT INTO publisher (first_name) VALUES ('Cahiers du CRILJ n° 7');
INSERT INTO publisher (first_name) VALUES ('Cahiers du CRILJ n°8');
INSERT INTO publisher (first_name) VALUES ('Calmann-Lévy');
INSERT INTO publisher (first_name) VALUES ('Cambourakis');
INSERT INTO publisher (first_name) VALUES ('Casterman');
INSERT INTO publisher (first_name) VALUES ('Castor benjamin');
INSERT INTO publisher (first_name) VALUES ('Castor poche');
INSERT INTO publisher (first_name) VALUES ('Catalpas');
INSERT INTO publisher (first_name) VALUES ('CCMDE');
INSERT INTO publisher (first_name) VALUES ('Centre Georges Pompidou');
INSERT INTO publisher (first_name) VALUES ('Cercle de la librairie');
INSERT INTO publisher (first_name) VALUES ('Chan-Ok');
INSERT INTO publisher (first_name) VALUES ('Cherche-midi');
INSERT INTO publisher (first_name) VALUES ('Cheyne');
INSERT INTO publisher (first_name) VALUES ('Cipango');
INSERT INTO publisher (first_name) VALUES ('Circé');
INSERT INTO publisher (first_name) VALUES ('Circonflexe');
INSERT INTO publisher (first_name) VALUES ('CLAP Midi-Pyrénées');
INSERT INTO publisher (first_name) VALUES ('Compagnie créative');
INSERT INTO publisher (first_name) VALUES ('Cornélius');
INSERT INTO publisher (first_name) VALUES ('Corps puce');
INSERT INTO publisher (first_name) VALUES ('Courtes et longues');
INSERT INTO publisher (first_name) VALUES ('Dapper');
INSERT INTO publisher (first_name) VALUES ('De facto');
INSERT INTO publisher (first_name) VALUES ('De la Martinière');
INSERT INTO publisher (first_name) VALUES ('De la Martinière jeunesse');
INSERT INTO publisher (first_name) VALUES ('Des Eléphants');
INSERT INTO publisher (first_name) VALUES ('Des Idées et des Hommes');
INSERT INTO publisher (first_name) VALUES ('Didier');
INSERT INTO publisher (first_name) VALUES ('Didier jeunesse');
INSERT INTO publisher (first_name) VALUES ('Dominique et cie');
INSERT INTO publisher (first_name) VALUES ('Donner à voir');
INSERT INTO publisher (first_name) VALUES ('Duculot Casterman');
INSERT INTO publisher (first_name) VALUES ('Ecole Centre Montauban');
INSERT INTO publisher (first_name) VALUES ('Ecole des loisirs');
INSERT INTO publisher (first_name) VALUES ('Ed Corps Puce');
INSERT INTO publisher (first_name) VALUES ('Ed Quart monde');
INSERT INTO publisher (first_name) VALUES ('Ed. des Elephants');
INSERT INTO publisher (first_name) VALUES ('Ed. des Elephants/Amnesty');
INSERT INTO publisher (first_name) VALUES ('Ed. du Jasmin');
INSERT INTO publisher (first_name) VALUES ('Edition des Monts');
INSERT INTO publisher (first_name) VALUES ('Editions de la Balle');
INSERT INTO publisher (first_name) VALUES ('Editions du Jasmin');
INSERT INTO publisher (first_name) VALUES ('Education Nationale');
INSERT INTO publisher (first_name) VALUES ('Elan vert');
INSERT INTO publisher (first_name) VALUES ('Encore une fois');
INSERT INTO publisher (first_name) VALUES ('ERES');
INSERT INTO publisher (first_name) VALUES ('Escabelle');
INSERT INTO publisher (first_name) VALUES ('Esperluète');
INSERT INTO publisher (first_name) VALUES ('Etre');
INSERT INTO publisher (first_name) VALUES ('Eyrolles');
INSERT INTO publisher (first_name) VALUES ('Flammarion');
INSERT INTO publisher (first_name) VALUES ('Flammarion jeunesse');
INSERT INTO publisher (first_name) VALUES ('FLBLB');
INSERT INTO publisher (first_name) VALUES ('Fleurus');
INSERT INTO publisher (first_name) VALUES ('Flies France');
INSERT INTO publisher (first_name) VALUES ('FOL de l'Ardèche');
INSERT INTO publisher (first_name) VALUES ('Folio junior');
INSERT INTO publisher (first_name) VALUES ('Folle avoine');
INSERT INTO publisher (first_name) VALUES ('Fond. BNP');
INSERT INTO publisher (first_name) VALUES ('France Loisirs');
INSERT INTO publisher (first_name) VALUES ('Frimousse');
INSERT INTO publisher (first_name) VALUES ('GAEL');
INSERT INTO publisher (first_name) VALUES ('Galeri Minyatür');
INSERT INTO publisher (first_name) VALUES ('Gallimard');
INSERT INTO publisher (first_name) VALUES ('Gallimard jeunesse');
INSERT INTO publisher (first_name) VALUES ('Gautier-Languereau');
INSERT INTO publisher (first_name) VALUES ('Grandir');
INSERT INTO publisher (first_name) VALUES ('Grasset');
INSERT INTO publisher (first_name) VALUES ('Grasset jeunesse');
INSERT INTO publisher (first_name) VALUES ('Gros textes');
INSERT INTO publisher (first_name) VALUES ('Gründ');
INSERT INTO publisher (first_name) VALUES ('Gulf Stream');
INSERT INTO publisher (first_name) VALUES ('Hachette');
INSERT INTO publisher (first_name) VALUES ('Hachette jeunesse');
INSERT INTO publisher (first_name) VALUES ('Hatier');
INSERT INTO publisher (first_name) VALUES ('Hatier jeunesse');
INSERT INTO publisher (first_name) VALUES ('Hatier poche');
INSERT INTO publisher (first_name) VALUES ('Helium');
INSERT INTO publisher (first_name) VALUES ('Hélium');
INSERT INTO publisher (first_name) VALUES ('Hoëbeke');
INSERT INTO publisher (first_name) VALUES ('Hong Fei');
INSERT INTO publisher (first_name) VALUES ('Hongfei');
INSERT INTO publisher (first_name) VALUES ('Il était deux fois');
INSERT INTO publisher (first_name) VALUES ('Jean-Pierre Delarge');
INSERT INTO publisher (first_name) VALUES ('Kalandraka');
INSERT INTO publisher (first_name) VALUES ('Kate'art');
INSERT INTO publisher (first_name) VALUES ('Kid Pocket');
INSERT INTO publisher (first_name) VALUES ('Kilowatt');
INSERT INTO publisher (first_name) VALUES ('Kimane');
INSERT INTO publisher (first_name) VALUES ('Krom Sakamapheap');
INSERT INTO publisher (first_name) VALUES ('L'agrume');
INSERT INTO publisher (first_name) VALUES ('L'art à la page');
INSERT INTO publisher (first_name) VALUES ('L'Edune');
INSERT INTO publisher (first_name) VALUES ('L'élan vert');
INSERT INTO publisher (first_name) VALUES ('L'Harmattan');
INSERT INTO publisher (first_name) VALUES ('L'Hydre');
INSERT INTO publisher (first_name) VALUES ('L'idée bleue');
INSERT INTO publisher (first_name) VALUES ('L'iroli');
INSERT INTO publisher (first_name) VALUES ('La Bagnole');
INSERT INTO publisher (first_name) VALUES ('La cabane sur le chien');
INSERT INTO publisher (first_name) VALUES ('La compagnie Créative');
INSERT INTO publisher (first_name) VALUES ('La Découverte poche');
INSERT INTO publisher (first_name) VALUES ('La joie de lire');
INSERT INTO publisher (first_name) VALUES ('La joie par les livres');
INSERT INTO publisher (first_name) VALUES ('La maison est en carton');
INSERT INTO publisher (first_name) VALUES ('La Martinière');
INSERT INTO publisher (first_name) VALUES ('La Palissade');
INSERT INTO publisher (first_name) VALUES ('La Pastèque');
INSERT INTO publisher (first_name) VALUES ('La Renarde rouge');
INSERT INTO publisher (first_name) VALUES ('La ville brûle');
INSERT INTO publisher (first_name) VALUES ('Larousse');
INSERT INTO publisher (first_name) VALUES ('Le baron perché');
INSERT INTO publisher (first_name) VALUES ('Le cherche midi');
INSERT INTO publisher (first_name) VALUES ('Le Dé bleu');
INSERT INTO publisher (first_name) VALUES ('Le Farfadet bleu');
INSERT INTO publisher (first_name) VALUES ('Le Genevrier');
INSERT INTO publisher (first_name) VALUES ('Le Griffon bleu');
INSERT INTO publisher (first_name) VALUES ('Le Jasmin');
INSERT INTO publisher (first_name) VALUES ('Le Pommier');
INSERT INTO publisher (first_name) VALUES ('Le port a jauni');
INSERT INTO publisher (first_name) VALUES ('Le Rocher');
INSERT INTO publisher (first_name) VALUES ('Le Sablier éditeur');
INSERT INTO publisher (first_name) VALUES ('Le Sorbier');
INSERT INTO publisher (first_name) VALUES ('Le Sorbier/Amnesty');
INSERT INTO publisher (first_name) VALUES ('Le Trou de nez');
INSERT INTO publisher (first_name) VALUES ('Le vengeur masqué');
INSERT INTO publisher (first_name) VALUES ('Les 400 coups');
INSERT INTO publisher (first_name) VALUES ('Les Arènes');
INSERT INTO publisher (first_name) VALUES ('Les Cahiers de la Charte');
INSERT INTO publisher (first_name) VALUES ('les éditions du mouton cerise');
INSERT INTO publisher (first_name) VALUES ('Les fourmis rouges');
INSERT INTO publisher (first_name) VALUES ('Les Grandes Personnes');
INSERT INTO publisher (first_name) VALUES ('Les Grands Personnes');
INSERT INTO publisher (first_name) VALUES ('Les p'tits bérets');
INSERT INTO publisher (first_name) VALUES ('Les papareils');
INSERT INTO publisher (first_name) VALUES ('Lirabelle');
INSERT INTO publisher (first_name) VALUES ('Lirabelle/Amnesty');
INSERT INTO publisher (first_name) VALUES ('Lis avec moi');
INSERT INTO publisher (first_name) VALUES ('Lito');
INSERT INTO publisher (first_name) VALUES ('Little Urban');
INSERT INTO publisher (first_name) VALUES ('Lo Païs d'Enfance');
INSERT INTO publisher (first_name) VALUES ('Magnard');
INSERT INTO publisher (first_name) VALUES ('Magnard jeunesse');
INSERT INTO publisher (first_name) VALUES ('Mango');
INSERT INTO publisher (first_name) VALUES ('Mango jeunesse');
INSERT INTO publisher (first_name) VALUES ('Margot');
INSERT INTO publisher (first_name) VALUES ('Marsam');
INSERT INTO publisher (first_name) VALUES ('MeMo');
INSERT INTO publisher (first_name) VALUES ('Mic-Mac');
INSERT INTO publisher (first_name) VALUES ('Michalon');
INSERT INTO publisher (first_name) VALUES ('Michel Lafon');
INSERT INTO publisher (first_name) VALUES ('Mijade');
INSERT INTO publisher (first_name) VALUES ('Mila');
INSERT INTO publisher (first_name) VALUES ('Mila éditions');
INSERT INTO publisher (first_name) VALUES ('Milan');
INSERT INTO publisher (first_name) VALUES ('Milan éducation');
INSERT INTO publisher (first_name) VALUES ('Milan jeunesse');
INSERT INTO publisher (first_name) VALUES ('Milan poche');
INSERT INTO publisher (first_name) VALUES ('Millefeuilles');
INSERT INTO publisher (first_name) VALUES ('Minedition');
INSERT INTO publisher (first_name) VALUES ('Mini Syros');
INSERT INTO publisher (first_name) VALUES ('Montreuil');
INSERT INTO publisher (first_name) VALUES ('MØtus');
INSERT INTO publisher (first_name) VALUES ('Mouton cerise');
INSERT INTO publisher (first_name) VALUES ('Naïve');
INSERT INTO publisher (first_name) VALUES ('Nathan');
INSERT INTO publisher (first_name) VALUES ('Nathan jeunesse');
INSERT INTO publisher (first_name) VALUES ('Nord-Sud');
INSERT INTO publisher (first_name) VALUES ('Notari');
INSERT INTO publisher (first_name) VALUES ('Nuinui');
INSERT INTO publisher (first_name) VALUES ('OQO éditions');
INSERT INTO publisher (first_name) VALUES ('Oskar');
INSERT INTO publisher (first_name) VALUES ('Oskar jeunesse');
INSERT INTO publisher (first_name) VALUES ('Où sont les enfants ?');
INSERT INTO publisher (first_name) VALUES ('P'tit cairn');
INSERT INTO publisher (first_name) VALUES ('P'tit Glénat');
INSERT INTO publisher (first_name) VALUES ('Palette');
INSERT INTO publisher (first_name) VALUES ('Paquet éditions');
INSERT INTO publisher (first_name) VALUES ('Paris Bibliothèques');
INSERT INTO publisher (first_name) VALUES ('Paris Musées');
INSERT INTO publisher (first_name) VALUES ('Pastel');
INSERT INTO publisher (first_name) VALUES ('PEMF');
INSERT INTO publisher (first_name) VALUES ('PEMF ados');
INSERT INTO publisher (first_name) VALUES ('Penguin books');
INSERT INTO publisher (first_name) VALUES ('Père Fouettard');
INSERT INTO publisher (first_name) VALUES ('Petit à petit');
INSERT INTO publisher (first_name) VALUES ('Picquier jeunesse');
INSERT INTO publisher (first_name) VALUES ('Pluie d'étoiles');
INSERT INTO publisher (first_name) VALUES ('Pluie d’étoiles');
INSERT INTO publisher (first_name) VALUES ('Plume d'Ocris');
INSERT INTO publisher (first_name) VALUES ('Plume de carotte');
INSERT INTO publisher (first_name) VALUES ('Poche');
INSERT INTO publisher (first_name) VALUES ('Pocket');
INSERT INTO publisher (first_name) VALUES ('Pocket jeunesse');
INSERT INTO publisher (first_name) VALUES ('Pocket junior');
INSERT INTO publisher (first_name) VALUES ('Pockett junior');
INSERT INTO publisher (first_name) VALUES ('Point de suspension');
INSERT INTO publisher (first_name) VALUES ('Points de Suspension');
INSERT INTO publisher (first_name) VALUES ('Poisson soluble');
INSERT INTO publisher (first_name) VALUES ('Pourquoi pas');
INSERT INTO publisher (first_name) VALUES ('Présence production');
INSERT INTO publisher (first_name) VALUES ('Privat');
INSERT INTO publisher (first_name) VALUES ('Publisud');
INSERT INTO publisher (first_name) VALUES ('Quart monde');
INSERT INTO publisher (first_name) VALUES ('Quatre fleuves');
INSERT INTO publisher (first_name) VALUES ('Québec');
INSERT INTO publisher (first_name) VALUES ('Rageot');
INSERT INTO publisher (first_name) VALUES ('Réciproques');
INSERT INTO publisher (first_name) VALUES ('Réunion des musées nationaux');
INSERT INTO publisher (first_name) VALUES ('Réunion musées nationaux');
INSERT INTO publisher (first_name) VALUES ('Rêves bleus');
INSERT INTO publisher (first_name) VALUES ('Ricochet');
INSERT INTO publisher (first_name) VALUES ('Rivages');
INSERT INTO publisher (first_name) VALUES ('Robert Laffont');
INSERT INTO publisher (first_name) VALUES ('Rocher');
INSERT INTO publisher (first_name) VALUES ('Rouegue');
INSERT INTO publisher (first_name) VALUES ('Rouergue');
INSERT INTO publisher (first_name) VALUES ('Rouge safran');
INSERT INTO publisher (first_name) VALUES ('Rue du monde');
INSERT INTO publisher (first_name) VALUES ('Ruisseaux d'Afrique');
INSERT INTO publisher (first_name) VALUES ('Saltimbanque');
INSERT INTO publisher (first_name) VALUES ('Sarbacane');
INSERT INTO publisher (first_name) VALUES ('Sarbacane/Amnesty');
INSERT INTO publisher (first_name) VALUES ('SEDRAP');
INSERT INTO publisher (first_name) VALUES ('SEDRAP jeunesse');
INSERT INTO publisher (first_name) VALUES ('Seghers');
INSERT INTO publisher (first_name) VALUES ('Seghers jeune bilingue');
INSERT INTO publisher (first_name) VALUES ('Seuil');
INSERT INTO publisher (first_name) VALUES ('Seuil jeunesse');
INSERT INTO publisher (first_name) VALUES ('Soc et foc');
INSERT INTO publisher (first_name) VALUES ('Sorbier');
INSERT INTO publisher (first_name) VALUES ('Souchon-Garrigue Hélène');
INSERT INTO publisher (first_name) VALUES ('Stock');
INSERT INTO publisher (first_name) VALUES ('Syros');
INSERT INTO publisher (first_name) VALUES ('Syros Jeunesse');
INSERT INTO publisher (first_name) VALUES ('Syros/Amnesty');
INSERT INTO publisher (first_name) VALUES ('Table ronde');
INSERT INTO publisher (first_name) VALUES ('Talents hauts');
INSERT INTO publisher (first_name) VALUES ('Tapori');
INSERT INTO publisher (first_name) VALUES ('Thierry Magnier');
INSERT INTO publisher (first_name) VALUES ('Tourbillon');
INSERT INTO publisher (first_name) VALUES ('Touret');
INSERT INTO publisher (first_name) VALUES ('Usborne');
INSERT INTO publisher (first_name) VALUES ('Vents d'ailleurs');
INSERT INTO publisher (first_name) VALUES ('Verdier');
INSERT INTO publisher (first_name) VALUES ('Versant Sud');
INSERT INTO publisher (first_name) VALUES ('Vigot');
INSERT INTO publisher (first_name) VALUES ('Vilo jeunesse');
INSERT INTO publisher (first_name) VALUES ('Vives voix');
INSERT INTO publisher (first_name) VALUES ('Walker Book');
INSERT INTO publisher (first_name) VALUES ('Yanbow al Kitab');
INSERT INTO publisher (first_name) VALUES ('Yomad');
INSERT INTO publisher (first_name) VALUES ('Zone J.');
INSERT INTO publisher (first_name) VALUES ('Zorba');


// insertion des livres dans la table book ;

