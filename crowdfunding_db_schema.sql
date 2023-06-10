--follow table order creation when uploading data to tables

DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category(
	category_id	varchar(10) PRIMARY KEY NOT NULL,
	category varchar(30)
);


CREATE TABLE subcategory(
	subcategory_id	varchar(10) PRIMARY KEY NOT NULL,
	subcategory varchar(30)
);

CREATE TABLE contacts(
	contact_id SERIAL PRIMARY KEY NOT NULL,
	first_name varchar(20),
	last_name varchar(20),
	email varchar(50)
);

CREATE TABLE campaign(
	cf_id SERIAL PRIMARY KEY NOT NULL,	
	contact_id	INT,
	company_name varchar(50),
	description	varchar(200),
	goal NUMERIC(10, 2),
	pledged	NUMERIC(10, 2),
	outcome varchar(20) CHECK (outcome IN ('failed', 'successful', 'live', 'canceled')),
	backers_count INT,	
	country varchar(5),
	currency varchar(5),
	launch_date DATE,
	end_date DATE,
	category_id varchar(10),
	subcategory_id varchar(30),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

