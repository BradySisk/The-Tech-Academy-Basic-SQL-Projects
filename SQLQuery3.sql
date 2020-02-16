USE db_zoo;

SELECT * FROM tbl_habitat;

SELECT * from tbl_species
SELECT species_name,species_order from tbl_species where species_order = 3;

SELECT * FROM tbl_nutrition 
SELECT  nutrition_type, nutrition_cost FROM tbl_nutrition where nutrition_cost BETWEEN 0 AND 600;

SELECT * FROM tbl_species
SELECT species_name, species_nutrition FROM tbl_species where species_nutrition BETWEEN 2202 AND 2206;

SELECT * FROM tbl_species
SELECT 
	s.species_name, n.nutrition_type
	FROM tbl_species AS s
	inner join tbl_nutrition n on n.nutrition_id = s.species_nutrition
	
	SELECT * FROM tbl_care;
	SELECT * FROM tbl_specialist;
	SELECT * FROM tbl_species;


SELECT
	tbl_specialist.specialist_fname, tbl_specialist.specialist_lname, tbl_specialist.specialist_contact,tbl_care.care_specialist, tbl_species.species_name
FROM tbl_specialist
	inner join tbl_care on tbl_specialist.specialist_id = tbl_care.care_specialist
	inner join tbl_species on tbl_care.care_id =  tbl_species.species_care  
WHERE tbl_species.species_name = 'penguin'

USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.Name_Class @species_name nvarchar(30) = NULL, @species_class nvarchar(60) = NULL
AS
SELECT *
FROM tbl_species
WHERE species_name = ISNULL(@species_name,species_name)
AND species_class LIKE '%' + ISNULL(@species_class ,species_class) + '%'
GO

EXEC dbo.Name_Class @species_name = 'jaguar',@species_class= '1'

select * from HumanResources.Department
select * from HumanResources.Employee