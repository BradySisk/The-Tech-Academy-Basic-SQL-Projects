

USE db_contacts

CREATE TABLE tbl_FLNAMES (
	FLNAMES_id INT  CONSTRAINT fk_numDress_id FOREIGN KEY REFERENCES tbl_numDress(numDress_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FLNAMES_fname varchar(50) NOT NULL,
	FLNAMES_lname varchar(50) NOT NULL
	);

INSERT INTO tbl_FLNAMES
	(FLNAMES_id,FLNAMES_fname,FLNAMES_lname)
VALUES
	('1','Steven', 'Spellberg'),
	('2','Ricky', 'Bobby'),
	('3','Darth', 'Maul')
	;

CREATE TABLE tbl_numDress (
	numDress_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	numDress_Phone# varchar(50) NOT NULL,
	numDress_Address varchar(50) NOT NULL
	);

INSERT INTO tbl_numDress 
	(numDress_Phone#,numDress_Address)
	VALUES
	('999','Wizard ln'),
	('1','Winners circle dr'),
	('1-800-Sith','Iridonia')
	;

	

	use db_contacts
	SELECT
	tbl_FLNAMES.FLNAMES_fname, tbl_numDress.numDress_Address
FROM tbl_FLNAMES
	OUTER JOIN  tbl_numDress on tbl_FLNAMES.FLNAMES_id = tbl_numDress.numDress_Address;
	 


