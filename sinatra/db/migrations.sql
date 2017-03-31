--psql -a -f migrations.sql

CREATE DATABASE candles;

\c candle;

CREATE TABLE candle(id, SERIAL PRIMARY KEY, name varchar(255), smelly boolean);
CREATE ROW candles(id, SERIAL PRIMARY KEY, name "Butterscotch", smelly true);
