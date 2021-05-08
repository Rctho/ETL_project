DROP TABLE IF EXISTS ImdbTitleRatings;
CREATE TABLE ImdbTitleRatings (
	
     id INT PRIMARY KEY,
    ratings VARCHAR NOT NULL,
    votes VARCHAR NOT NULL
);
SELECT * FROM ImdbTitleRatings;

DROP TABLE IF EXISTS ImdbTitleBasics;
CREATE TABLE ImdbTitleBasics (
	
    id SERIAL PRIMARY KEY,
    type VARCHAR NOT NULL,
    primarytitle VARCHAR NOT NULL,
	originaltitle VARCHAR ,
	year INT,
	runtime INT,
	genres VARCHAR NOT NULL
);

SELECT * FROM ImdbTitleBasics;

SELECT * FROM ImdbTitleRatings

INNER JOIN ImdbTitleBasics ON ImdbTitleBasics.id=ImdbTitleRatings.id;
