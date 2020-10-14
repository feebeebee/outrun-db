CREATE TABLE Dogs (
    id integer PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    regName varchar(255) NOT NULL,
    regNo varchar(100),
    chipNo varchar(100),
    dogImg varchar(255),
    breederId integer,
    ownerId integer,
    kennelId integer,
    sireId integer,
    damId integer,
    callName varchar(255),
    sex enum("Dog", "Bitch") NOT NULL,
    dateOfBirth date,
    dateOfDeath date,
    landOfBirth varchar(100),
    landOfStanding varchar(100),
    size varchar(25),
    weight varchar(25),
    coat enum("Smooth", "Rough", "Bearded"),
    coi varchar(100),
    notes varchar(255)
);

CREATE TABLE Colours (
    dogId integer PRIMARY KEY NOT NULL,
    pigment enum("Black", "Slate", "Red", "Lilac"),
    tricolour boolean,
    merle boolean,
    sable boolean,
    eeRed boolean,
    brindle boolean,
    FOREIGN KEY (dogId) REFERENCES Dogs(id)
);

CREATE TABLE HealthTests (
    dogId integer PRIMARY KEY NOT NULL,
    cea enum("CLEAR", "CARRIER", "AFFECTED"),
    dm enum("CLEAR", "CARRIER", "AFFECTED"),
    raineSyndrome enum("CLEAR", "CARRIER", "AFFECTED"),
    mh enum("CLEAR", "CARRIER", "AFFECTED"),
    pll enum("CLEAR", "CARRIER", "AFFECTED"),
    vn enum("CLEAR", "CARRIER", "AFFECTED"),
    tns enum("CLEAR", "CARRIER", "AFFECTED"),
    sn enum("CLEAR", "CARRIER", "AFFECTED"),
    igs enum("CLEAR", "CARRIER", "AFFECTED"),
    gg enum("CLEAR", "CARRIER", "AFFECTED"),
    mdr1 enum("CLEAR", "CARRIER", "AFFECTED"),
    myotonia enum("CLEAR", "CARRIER", "AFFECTED"),
    eoad enum("CLEAR", "CARRIER", "AFFECTED"),
    hipScore varchar(100),
    elbowScore varchar(100),
    FOREIGN KEY (dogId) REFERENCES Dogs(id)
);

CREATE TABLE People (
    id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstName varchar(255),
    lastName varchar(255),
    country varchar(255)
);

CREATE TABLE Kennels (
    id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
    kennelName varchar(255),w
    website varchar(255),
    country varchar(255),
    kennelDesc longtext
)

CREATE TABLE KennelPeople (
    kennelId integer,
    personId integer,
    PRIMARY KEY (kennelId, personID),
    FOREIGN KEY (kennelId) references Kennels(id),
    FOREIGN KEY (personId) references People(id)
);

CREATE UNIQUE INDEX indx1 ON KennelPeople (personId, kennelId);

INSERT INTO People VALUES (
    1,
    "Victoria",
    "Maciver",
    "United Kingdom"
);

INSERT INTO People VALUES (
    2,
    "Keeli",
    "Wood",
    "United Kingdom"
)

INSERT INTO People VALUES (
    3,
    "Janet",
    "Beale",
    "United Kingdom"
)

INSERT INTO People VALUES (
    4,
    "Mark",
    "Hughes",
    "United Kingdom"
)

INSERT INTO People VALUES (
    5,
    "Natasha",
    "Swan",
    "United Kingdom"
)

INSERT INTO People VALUES (
    6,
    "Steph",
    "Berry",
    "United Kingdom"
)

INSERT INTO Kennels VALUES (
    1,
    "Lignum Working Dogs",
    "https://www.lignumworkingdogs.co.uk",
    "United Kingdom",
    null
)

INSERT INTO Kennels VALUES (
    2,
    "Astra Border Collies",
    "http://www.bordercolliepuppies.co.uk",
    "United Kingdom",
    null
)

INSERT INTO KennelPeople VALUES (
    1,
    2
)

INSERT INTO KennelPeople VALUES (
    2,
    3
)

INSERT INTO Dogs VALUES (
    1, 
    "Lignum Felix", 
    "ISDS 361311",
    null,
    "1-felix.JPG",
    2,
    1,
    1,
    2,
    3,
    "Felix",
    "Dog",
    "2018-10-10",
    null,
    "United Kingdom",
    "United Kingdom",
    "57 cm",
    "22 kg",
    "Rough",
    null,
    null
);

INSERT INTO Colours VALUES (
    1,
    "Black",
    false,
    true,
    false,
    false,
    false
);

INSERT INTO HealthTests VALUES (
    1,
    null,
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    null,
    null,
    null,
    null
);

-- Brin
INSERT INTO Dogs VALUES (
    2, 
    "Lignum Brin", 
    "ISDS 360404",
    null,
    "2-brin.JPG",
    2,
    2,
    1,
    null,
    null,
    "Brin",
    "Dog",
    "2016-03-16",
    null,
    "United Kingdom",
    "United Kingdom",
    null,
    "18 kg",
    "Rough",
    null,
    "Registed on Merit with the ISDS"
);

INSERT INTO Colours VALUES (
    2,
    "Black",
    false,
    true,
    false,
    false,
    false
);

INSERT INTO HealthTests VALUES (
    2,
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    null,
    null,
    "7:7",
    "0"
);

-- Fig
INSERT INTO Dogs VALUES (
    3, 
    "Lignum Fig", 
    "ISDS 360405",
    null,
    "3-fig.JPG",
    2,
    2,
    1,
    null,
    null,
    "Fig",
    "Bitch",
    "2016-09-01",
    null,
    "United Kingdom",
    "United Kingdom",
    null,
    "19 kg",
    "Rough",
    null,
    "Registed on Merit with the ISDS"
);

INSERT INTO Colours VALUES (
    3,
    "Red",
    true,
    false,
    false,
    false,
    false
);

INSERT INTO HealthTests VALUES (
    3,
    "CARRIER",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    null,
    null,
    null,
    null
);


-- Mable
INSERT INTO Dogs VALUES (
    4, 
    "Lignum Mable", 
    "ISDS 361283",
    null,
    "4-mable.JPG",
    2,
    2,
    1,
    2,
    3,
    "Mable",
    "Bitch",
    "2018-02-19",
    null,
    "United Kingdom",
    "United Kingdom",
    null,
    "18 kg",
    "Rough",
    null,
    null
);

INSERT INTO Colours VALUES (
    4,
    "Black",
    false,
    true,
    false,
    false,
    false
);

INSERT INTO HealthTests VALUES (
    4,
    "CARRIER",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    null,
    null,
    null,
    null
);

-- Tweed
INSERT INTO Dogs VALUES (
    5, 
    "Astra Tweed", 
    "ISDS 334665",
    null,
    "5-tweed.JPG",
    3,
    4,
    2,
    null,
    null,
    "Tweed",
    "Dog",
    "2014-06-14",
    null,
    "United Kingdom",
    "United Kingdom",
    null,
    null,
    "Smooth",
    null,
    null
);

INSERT INTO Colours VALUES (
    5,
    "Black",
    true,
    false,
    false,
    false,
    false
);

INSERT INTO HealthTests VALUES (
    5,
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    null,
    null,
    null,
    null
);


-- Triss
INSERT INTO Dogs VALUES (
    6, 
    "Lignum Triss", 
    "ISDS 370939",
    null,
    "6-triss.JPG",
    2,
    5,
    1,
    5,
    4,
    "Triss",
    "Bitch",
    "2020-02-12",
    null,
    "United Kingdom",
    "United Kingdom",
    null,
    null,
    "Rough",
    null,
    null
);

INSERT INTO Colours VALUES (
    6,
    "Red",
    true,
    true,
    false,
    false,
    false
);

INSERT INTO HealthTests VALUES (
    6,
    null,
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    null,
    "CLEAR",
    null,
    null,
    null,
    null
);


-- Tom
INSERT INTO Dogs VALUES (
    7, 
    "Lignum Tom", 
    null,
    null,
    "7-tom.JPG",
    2,
    6,
    1,
    5,
    4,
    "Tom",
    "Dog",
    "2020-02-12",
    null,
    "United Kingdom",
    "United Kingdom",
    null,
    null,
    "Smooth",
    null,
    null
);

INSERT INTO Colours VALUES (
    7,
    "Lilac",
    false,
    false,
    false,
    false,
    false
);

INSERT INTO HealthTests VALUES (
    7,
    null,
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    "CLEAR",
    null,
    "CLEAR",
    null,
    null,
    null,
    null
);

-- INSERT INTO Test(id, title) values(1, "Hello");
-- Your code here!
SELECT * FROM Dogs
