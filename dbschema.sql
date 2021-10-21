DROP TABLE IF EXISTS users;
CREATE TABLE users(
	username VARCHAR(50) NOT NULL PRIMARY KEY,
	role VARCHAR(32) NULL,
	token VARCHAR(128) NULL,
	last_login DATETIME NULL,
	pwd VARCHAR(1900) NULL,
	status VARCHAR(32) NULL,
	remarks VARCHAR(255) NULL,
	created_on DATETIME NULL,
	created_by VARCHAR(32) NULL
);
CREATE INDEX users_i1 ON users (token);
CREATE INDEX users_i2 ON users (role);

DROP TABLE IF EXISTS saplings;
CREATE TABLE saplings(
	id VARCHAR(32) NOT NULL PRIMARY KEY,
	lat DECIMAL(11,8) NULL,
	lon DECIMAL(11,8) NULL,
	name VARCHAR(100) NULL,
	`group` VARCHAR(32) NULL,
	local_name VARCHAR(100) NULL,
	botanical_name VARCHAR(100) NULL,
	planted_date DATE NULL,
	status VARCHAR(50) NULL,
	details TEXT NULL,
	first_photos VARCHAR(500) NULL,
	confirmed BOOLEAN NULL,
	created_on DATETIME NULL,
	created_by VARCHAR(32) NULL,
	modified_on DATETIME NULL,
	modified_by VARCHAR(32) NULL
);
CREATE INDEX saplings_i1 ON saplings (planted_date);
CREATE INDEX saplings_i2 ON saplings (status);
CREATE INDEX saplings_i3 ON saplings (confirmed);
CREATE INDEX saplings_i4 ON saplings (`group`);
CREATE INDEX saplings_i5 ON saplings (name);


DROP TABLE IF EXISTS sponsor_sapling;
CREATE TABLE sponsor_sapling(
	id VARCHAR(32) NOT NULL PRIMARY KEY,
	username VARCHAR(32) NULL,
	sapling_id VARCHAR(32) NULL,
	status VARCHAR(32) NULL,
	comments VARCHAR(255) NULL,
	approver VARCHAR(32) NULL,
	application_date DATE NULL,
	approval_date DATE NULL,
	created_on DATETIME NULL,
	created_by VARCHAR(32) NULL,
	modified_on DATETIME NULL,
	modified_by VARCHAR(32) NULL
);
CREATE INDEX sponsor_sapling_i1 ON sponsor_sapling (username);
CREATE INDEX sponsor_sapling_i2 ON sponsor_sapling (sapling_id);
CREATE INDEX sponsor_sapling_i3 ON sponsor_sapling (status);
CREATE INDEX sponsor_sapling_i4 ON sponsor_sapling (approver);
CREATE INDEX sponsor_sapling_i5 ON sponsor_sapling (application_date);
CREATE INDEX sponsor_sapling_i6 ON sponsor_sapling (approval_date);


DROP TABLE IF EXISTS observations;
CREATE TABLE observations(
	id VARCHAR(32) NOT NULL PRIMARY KEY,
	sapling_id VARCHAR(32) NULL,
	photo_id VARCHAR(32) NULL,
	observation_date DATE NULL,
	details TEXT NULL,
	status VARCHAR(32) NULL,
	confirmed BOOLEAN NULL,
	created_on DATETIME NULL,
	created_by VARCHAR(32) NULL,
	modified_on DATETIME NULL,
	modified_by VARCHAR(32) NULL
);
CREATE INDEX observations_i1 ON observations (sapling_id);
CREATE INDEX observations_i2 ON observations (photo_id);
CREATE INDEX observations_i3 ON observations (photo_id);
CREATE INDEX observations_i4 ON observations (observation_date);
CREATE INDEX observations_i5 ON observations (confirmed);
CREATE INDEX observations_i6 ON observations (status);

