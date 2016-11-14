INSERT INTO Pet_Owner (OwnerID, OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail) VALUES 
(1, 'Downs', 'Marsha',  5555378765, 'Marsha.Downs@somewhere.com'),
(2, 'James', 'Richard',	5555377654, 'Richard.James@somewhere.som'),
(3, 'Frier', 'Liz',	    5555376543,	'Liz.Frier@somewhere.com'),
(4, 'Trent', 'Miles',   NULL,       'Miles.Trent@somewhere.com');


INSERT INTO Pet(PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID) VALUES 
(1,	'King',		'Dog',	'Std. Poodle',	'21.02.2011',  '25.5',	1),
(2,	'Teddy',	'Cat',	'Cashmere',	    '01.02.2012',  '10.5',	2),
(3,	'Fido',		'Dog',	'Std. Poodle',	'17.07.2010',  '28.5',	1),
(4,	'AJ',		'Dog',	'Collie Mix',	'05.05.2011',  '20.0',	3),
(5,	'Cedro',	'Cat',	 NULL,   	    '06.06.2009',  '9.5',  	2),
(6,	'Wooley',	'Cat',	 NULL,		     NULL,         '9.5', 	2),
(7,	'Buster',	'Dog',	'Border Collie','11.12.2008', '25.0',   4); 

SELECT PetBreed
FROM Pet;