CREATE DATABASE catomProject;

CREATE TABLE researchers(rID INT NOT NULL,
                         firstName VARCHAR(25) NOT NULL,
                         lastName VARCHAR(25) NOT NULL,
                         Summary VARCHAR(4000) NOT NULL,
                         
                         pID INT NOT NULL,
                         PRIMARY KEY (hID,pID),
                         FOREIGN KEY (pID) REFERENCES projects (pID) ON DELETE CASCADE)



CREATE TABLE projects(pID INT NOT NULL,
                      projectName VARCHAR(25) NOT NULL,
                      subject VARCHAR(25) NOT NULL,
                      rID INT NOT NULL,
                      PRIMARY KEY (rID,pID),
                      FOREIGN KEY (rID) REFERENCES researchers (rID) ON DELETE CASCADE)