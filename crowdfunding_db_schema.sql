--follow table order creation when uploading data to tables

DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category(
	category_id	varchar(10) PRIMARY KEY NOT NULL,
	category varchar(30) NOT NULL
);


CREATE TABLE subcategory(
	subcategory_id	varchar(10) PRIMARY KEY NOT NULL,
	subcategory varchar(30) NOT NULL
);

CREATE TABLE contacts(
	contact_id SERIAL PRIMARY KEY NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	email varchar(50) NOT NULL
);

CREATE TABLE campaign(
	cf_id SERIAL PRIMARY KEY NOT NULL,	
	contact_id	INT NOT NULL,
	company_name varchar(50) NOT NULL,
	description	varchar(200) NOT NULL,
	goal NUMERIC(10, 2) NOT NULL,
	pledged	NUMERIC(10, 2) NOT NULL,
	outcome varchar(20) CHECK (outcome IN ('failed', 'successful', 'live', 'canceled')),
	backers_count INT NOT NULL,	
	country varchar(5) NOT NULL,
	currency varchar(5) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id varchar(10) NOT NULL,
	subcategory_id varchar(30) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

