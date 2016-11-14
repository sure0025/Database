/*Excercises from the book*/

/*3.15 - Write an SQL statement to display all columns of all rows of PET. Do not use the asterisk (*) notation.*/

SELECT PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID
FROM Pet 

/*3.16 - Write an SQL statement to display all columns of all rows of PET. Use the asterisk (*) notation*/
SELECT *
FROM Pet 

/*3.17 - Write an SQL statement to display the breed and type of all pets.*/
SELECT PetBreed, PetType
FROM Pet 

/*3.18 - Write an SQL statement to display the breed, type, and DOB of all pets having the type Dog. */
SELECT PetBreed, PetType, PetDOB
FROM Pet 
WHERE PetType = 'Dog'

/*3.19 - Write an SQL statement to display the PetBreed column of PET. */
SELECT PetBreed
FROM Pet

/*3.20 - Write an SQL statement to display the PetBreed column of PET. Do not show duplicates. */
SELECT distinct PetBreed
FROM Pet

/*3.21 - Write an SQL statement to display the breed, type, and DOB for all pets having the type Dog and the breed Std. Poodle. */
SELECT PetBreed, PetType, PetDOB
FROM Pet
WHERE PetType = 'Dog' 
	  AND PetBreed = 'Std. Poodle'


/*3.22 - Write an SQL statement to display the name, breed, and type for all pets that are not of type Cat, Dog, or Fish.*/
SELECT PetName, PetBreed, PetType
FROM Pet 
WHERE PetType NOT IN ('Cat', 'Dog', 'Fish') 
 /*3.24 Write an SQL statement to display the last name, first name, and email of all owners who have an email address 
 ending with somewhere.com. Assume that email account names can be any number of characters. */

 SELECT OwnerLastName, OwnerFirstName, OwnerEmail
 FROM Pet_Owner
 WHERE OwnerEmail LIKE '%somewhere.com'

 /*3.25 Write an SQL statement to display the last name, first name, and email of any owner who has a NULL value for OwnerPhone*/
 SELECT OwnerLastName, OwnerFirstName, OwnerEmail
 FROM Pet_Owner
 WHERE OwnerPhone IS NULL


 /*3.26 Write an SQL statement to display the name and breed of all pets, sorted by PetName. */
 SELECT PetName, PetBreed
 FROM Pet
 ORDER BY PetName


 /*3.27 Write an SQL statement to display the name and breed of all pets, sorted by PetBreed in ascending order and by PetName in descending order within PetBreed.*/
 SELECT PetName, PetBreed
 FROM Pet
 ORDER BY PetBreed ASC, PetName DESC



 /*3.28 Write an SQL statement to count the number of pets.*/ 
 SELECT COUNT(PetID) AS NumberOfPets
 FROM Pet

 /*3.29 Write an SQL statement to count the number of distinct breeds.*/
 SELECT COUNT(DISTINCT PetID) AS NumberOfPets
 FROM Pet
 

 /* The following table schema for the PET_3 table is another alternate version of 
 the PET table:
						PET_3 (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
 Data for PET_3 are shown in Figure 3-20. 
 Except as specifically noted in the question itself, use the PET_3 table for your answers to all the remaining review questions.*/




 /*3.31 Write an SQL statement to display the minimum, maximum, and average weight of dogs. */
 SELECT MIN(PetWeight) as MinimumWeight,
		Max(PetWeight) as MaximumWeight,
		AVG(PetWeight) as AverageWeight
FROM Pet


 /*3.32 Write an SQL statement to group the data by PetBreed and display the average weight per breed.*/ 
 SELECT PetBreed, AVG(PetWeight) as AverageWeight
 FROM Pet 
 GROUP BY PetBreed


 /*3.33 Answer question 3.32 but consider only breeds for which two or more pets are included in the database.*/
 SELECT PetBreed, AVG(PetWeight) as AverageWeight
 FROM Pet 
 WHERE PetBreed IS NOT NULL
 GROUP BY PetBreed
 HAVING COUNT(*) > 1

 /* 3.34 Answer question 3.33 but do not consider any pet having the breed of Unknown.*/
SELECT PetBreed, AVG(PetWeight) as AverageWeight
 FROM Pet 
 GROUP BY PetBreed
 HAVING COUNT(*) > 1
