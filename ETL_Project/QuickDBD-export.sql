-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Unemployment_rate" (
    "county_id" INT   NOT NULL,
    "month" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "monthly_rate" INT   NOT NULL
);

CREATE TABLE "county_pop" (
    "id" INT   PRIMARY KEY NOT NULL,
    "state" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "totalpop" INT   NOT NULL,
    "men" INT   NOT NULL,
    "women" INT   NOT NULL,
  
);

CREATE TABLE "annual_rate" (
    "county_id" INT PRIMARY KEY NOT NULL,
    "county" VARCHAR   NOT NULL,
    "Annual_rate" INT   NOT NULL
);



ALTER TABLE "Unemployment_rate" ADD CONSTRAINT "fk_Unemployment_rate_county_id" FOREIGN KEY("county_id")
REFERENCES "county_pop" ("id");

ALTER TABLE "annual_rate" ADD CONSTRAINT "fk_annual_rate_county_id" FOREIGN KEY("county_id")
REFERENCES "county_pop" ("id");

