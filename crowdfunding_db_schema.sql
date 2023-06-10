DROP TABLE IF EXISTS category;
CREATE TABLE category(
	category_id	varchar(10) PRIMARY KEY NOT NULL,
	category varchar(30)
)

DROP TABLE IF EXISTS subcategory;
CREATE TABLE subcategory(
	subcategory_id	varchar(10) PRIMARY KEY NOT NULL,
	subcategory varchar(30)
)

DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts(
	contact_id SERIAL PRIMARY KEY NOT NULL,
	first_name varchar(20),
	last_name varchar(20),
	email varchar(50)
)


DROP TABLE IF EXISTS campaign;
CREATE TABLE campaign(
	cf_id SERIAL PRIMARY KEY NOT NULL,	
	contact_id	INT,
	company_name varchar(50),
	description	varchar(200),
	goal NUMERIC(10, 2),
	pledged	NUMERIC(10, 2),
	outcome	ENUM('successful', 'failed'),
	backers_count INT,	
	country	currency varchar(5),
	launched_date DATE,
	end_date DATE,
	category_id varchar(10),
	subcategory_id varchar(30),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
)


