CREATE DATABASE recommendations;
\c recommendations
CREATE TABLE recs_chi (id SERIAL PRIMARY KEY, contributor VARCHAR(255), place VARCHAR(255), notes TEXT, type_of_place VARCHAR(255));
