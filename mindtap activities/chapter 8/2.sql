
/* IMAGES
users.png
drivers.png
cars.png
travels.png   */

-- #region Activity 1  --


/* IMAGES
users.png
drivers.png
cars.png
travels.png   */
DROP TABLE IF EXISTS MAINTENANCES;
DROP TABLE IF EXISTS ACTIVE_DRIVERS;
DROP TABLE IF EXISTS MAINTENANCE_TYPES;

-- task 1 --

CREATE TABLE MAINTENANCE_TYPES (

MAINTENANCE_TYPE_ID CHAR(5) PRIMARY KEY,
MAINTENANCE_TYPE_DESCRIPTION VARCHAR(30) NOT NULL

);

/*
DESCRIBE MAINTENANCE_TYPES
*/

-- task 2 --

CREATE TABLE MAINTENANCES (
    CAR_ID CHAR(5),
    MAINTENANCE_TYPE_ID CHAR(5),
    MAINTENANCE_DUE DATE,
    PRIMARY KEY (CAR_ID, MAINTENANCE_TYPE_ID, MAINTENANCE_DUE),
    FOREIGN KEY (CAR_ID) REFERENCES
        CARS(CAR_ID),
    FOREIGN KEY (MAINTENANCE_TYPE_ID) REFERENCES
        MAINTENANCE_TYPES(MAINTENANCE_TYPE_ID)
);


/*
DESCRIBE MAINTENANCES;
*/

-- task 3 --

CREATE TABLE ACTIVE_DRIVERS AS

    SELECT
        DRIVER_ID,
        DRIVER_FIRST_NAME,
        DRIVER_LAST_NAME,
        DRIVER_DRIVING_LICENSE_ID,
        DRIVER_DRIVING_LICENSE_CHECKED,
        DRIVER_RATING
    FROM DRIVERS
    WHERE DRIVER_RATING > 0;

ALTER TABLE ACTIVE_DRIVERS ADD PRIMARY KEY (DRIVER_ID);

/*
DESCRIBE ACTIVE_DRIVERS;
*/

-- task 4 --

ALTER TABLE ACTIVE_DRIVERS MODIFY DRIVER_FIRST_NAME VARCHAR(20);
ALTER TABLE ACTIVE_DRIVERS MODIFY DRIVER_LAST_NAME VARCHAR(20);
ALTER TABLE ACTIVE_DRIVERS MODIFY DRIVER_DRIVING_LICENSE_ID VARCHAR(10);

CREATE INDEX NameSearch
  ON ACTIVE_DRIVERS (
    DRIVER_FIRST_NAME,
    DRIVER_LAST_NAME,
    DRIVER_DRIVING_LICENSE_ID
  );

  -- task 5 --

ALTER TABLE ACTIVE_DRIVERS ADD CONSTRAINT DuplicateCheck UNIQUE (DRIVER_FIRST_NAME, DRIVER_LAST_NAME, DRIVER_DRIVING_LICENSE_ID);

-- task 6 --

ALTER TABLE MAINTENANCE_TYPES ADD MAINTENANCE_PRICE FLOAT;

-- #endregion Activity 1  --

-- Activity 2 --

-- Task 1 --

ALTER TABLE MAINTENANCE_TYPES
    MODIFY MAINTENANCE_PRICE
        FLOAT DEFAULT 0;

-- Task 2 --

ALTER TABLE ACTIVE_DRIVERS
    ADD CONSTRAINT ACTIVE_DRIVERS_chk_1
        CHECK (LENGTH(DRIVER_DRIVING_LICENSE_ID) = 7);

-- Task 3 --

INSERT INTO MAINTENANCE_TYPES (MAINTENANCE_TYPE_ID, MAINTENANCE_TYPE_DESCRIPTION, MAINTENANCE_PRICE) VALUES
    (1, 'Tire Change', 50),
    (2, 'Oil Change', 45),
    (3, 'Full Cleaning', 100),
    (4, 'Gas Pump Change', 145);

-- Task 4 --

INSERT INTO MAINTENANCES (CAR_ID, MAINTENANCE_TYPE_ID, MAINTENANCE_DUE)
    SELECT CAR_ID, 1, '2020-12-31'
FROM CARS
    WHERE CAR_YEAR = 2018;

-- Task 5 --

ALTER TABLE ACTIVE_DRIVERS
    MODIFY DRIVER_RATING FLOAT NULL; -- idk? was required for some reason

ALTER TABLE ACTIVE_DRIVERS
    DROP COLUMN DRIVER_DRIVING_LICENSE_CHECKED;

-- Task 6 --

UPDATE MAINTENANCE_TYPES
    SET MAINTENANCE_PRICE = 75
WHERE MAINTENANCE_TYPE_DESCRIPTION = 'Oil Change';

DELETE FROM
    MAINTENANCE_TYPES
WHERE MAINTENANCE_TYPE_DESCRIPTION = 'Gas Pump Change';
