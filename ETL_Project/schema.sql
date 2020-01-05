-- Create Tables

CREATE TABLE unemployment_rate (
    Month VARCHAR,
    state VARCHAR,
    County VARCHAR PRIMARY KEY,
    Monthly_rate INT        
);

DROP TABLE unemployment_rate;

CREATE TABLE unemployment_rate (
    Month TEXT,
    State TEXT,
    County TEXT PRIMARY KEY,
    Monthly_rate INT        
);

SELECT * FRom unemployment_rate;
delete from unemployment_rate;



CREATE TABLE county_pop(
state VARCHAR,
County VARCHAR PRIMARY KEY,
TotalPop INT,
Men INT,
Women INT
);

SELECT * FROM county_pop;
delete from county_pop;

CREATE TABLE annual_rate (
    County VARCHAR ,
    Annual_rate INT
);	

  
 DROP TABLE annual_rate;
 
CREATE TABLE annual_rate (
    County VARCHAR PRIMARY KEY,
    Annual_rate INT
); 