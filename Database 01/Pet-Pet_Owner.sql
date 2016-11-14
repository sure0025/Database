

CREATE TABLE Pet_Owner (

OwnerID int NOT NULL, 
OwnerLastName varchar(100) NOT NULL,
OwnerFirstName varchar(100) NOT NULL,
OwnerPhone float,
OwnerEmail varchar(100) 
CONSTRAINT Pet_Owner_PK PRIMARY KEY (OwnerID)
); 


CREATE TABLE Pet (
PetID int NOT NULL, 
PetName varchar (100) NOT NULL, 
PetType varchar(100) NOT NULL, 
PetBreed varchar(100) , 
PetDOB varchar(100), 
PetWeight varchar (100) NOT NULL, 
OwnerID int NOT NULL
CONSTRAINT Pet_PK PRIMARY KEY (PetID)
CONSTRAINT Pet_PetOwner_FK FOREIGN KEY (OwnerID)
						   REFERENCES Pet_Owner (OwnerID) 
);


