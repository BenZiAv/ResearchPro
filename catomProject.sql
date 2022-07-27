CREATE DATABASE CatomProject;

CREATE TABLE researchers(rID INT NOT NULL,
                         firstName VARCHAR(25) NOT NULL,
                         lastName VARCHAR(25) NOT NULL,
                         Summary VARCHAR(4000) NOT NULL,
                         picture VARBINARY(255) NOT NULL,
                         
                         PRIMARY KEY (rID));
                         


CREATE TABLE projects(pID INT NOT NULL,
                      projectTitle VARCHAR(25) NOT NULL,
                      date DATE NOT NULL,
                      Summary VARCHAR(4000) NOT NULL,
                      rID INT NOT NULL,
                      PRIMARY KEY (rID,pID),
                      FOREIGN KEY (rID) REFERENCES researchers (rID) ON DELETE CASCADE);