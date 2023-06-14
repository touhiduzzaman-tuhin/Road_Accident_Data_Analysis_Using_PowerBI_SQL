CREATE TABLE ROAD_ACCIDENT_DATA
(
	ACCIDENT_INDEX VARCHAR(50),
	ACCIDENT_DATE DATE,
	MONTH VARCHAR(50),
	YEAR INT,
	DAY_OF_WEEK VARCHAR(50),
	JUNCTION_CONTROL VARCHAR(50),
	JUNCTION_DETAIL VARCHAR(50),
	ACCIDENT_SEVERITY VARCHAR(50),
	LATITUDE FLOAT,
	LIGHT_CONDITIONS VARCHAR(50),
	LOCAL_AUTHORITY_DISTRICT VARCHAR(50),
	CARRIAGEWAY_HAZARDS VARCHAR(50),
	LONGITUDE FLOAT,
	NUMBER_OF_CASUALTIES INT,
	NUMBER_OF_VEHICLES INT,
	POLICE_FORCE VARCHAR(50),
	ROAD_SURFACE_CONDITIONS VARCHAR(50),
	ROAD_TYPE VARCHAR(50),
	SPEED_LIMIT INT,
	URBAN_OR_RURAL_AREA VARCHAR(50),
	WEATHER_CONDITIONS VARCHAR(50),
	VEHICLE_TYPE VARCHAR(50)
);

SELECT * FROM ROAD_ACCIDENT_DATA;

COPY ROAD_ACCIDENT_DATA FROM 'J:\Portfolio Project\Road Accident Analysis\data\Road Accident Data For SQL.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM ROAD_ACCIDENT_DATA;

SELECT DISTINCT ACCIDENT_SEVERITY FROM ROAD_ACCIDENT_DATA;

UPDATE ROAD_ACCIDENT_DATA
SET ACCIDENT_SEVERITY = 'Fatal'
WHERE ACCIDENT_SEVERITY = 'Fetal';


SELECT * FROM ROAD_ACCIDENT_DATA;

ALTER TABLE ROAD_ACCIDENT_DATA ADD COLUMN MONTH_NUMBER INT;

UPDATE ROAD_ACCIDENT_DATA
SET MONTH_NUMBER = EXTRACT(MONTH FROM ACCIDENT_DATE);

SELECT * FROM ROAD_ACCIDENT_DATA;