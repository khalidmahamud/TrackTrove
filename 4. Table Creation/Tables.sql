/*For displaying created tables*/
SELECT table_name FROM user_tables

/*Table Creation*/
  
CREATE TABLE mluser (
    U_ID number(5) primary key NOT NULL,
    U_Name varchar2(150) NOT NULL,
    U_Email varchar2(150)
);

CREATE TABLE playlist (
      P_ID number (5) PRIMARY KEY NOT NULL, 
      P_Name varchar2(150) NOT NULL, 
      P_Date date NOT NULL
);


CREATE TABLE tracks (
      T_ID number (5) PRIMARY KEY NOT NULL, 
      T_Name varchar2(150) NOT NULL, 
      T_Date date NOT NULL,
      Duration number(4,2) NOT NULL
);

CREATE TABLE artist (
      Artist_ID number (5) PRIMARY KEY NOT NULL, 
      Artist_Name varchar2(150) NOT NULL, 
      Nationality varchar2(150)
);

CREATE TABLE album (
      Album_ID number (5) PRIMARY KEY NOT NULL, 
      Album_Name varchar2(150) NOT NULL, 
      Album_Date date NOT NULL,
);

CREATE TABLE genre (
      G_ID number (5) PRIMARY KEY NOT NULL, 
      G_Name varchar2(150) NOT NULL 
);

CREATE TABLE makes (
    U_ID number(5) primary key NOT NULL,
    U_Name varchar2(150) NOT NULL,
    U_Email varchar2(150),
    P_ID number(5) NOT NULL,
    CONSTRAINT pid FOREIGN KEY (P_ID)
    REFERENCES Playlist(P_ID)
);

CREATE TABLE listens (
    U_ID number(5) PRIMARY KEY NOT NULL,
    T_ID number(5) NOT NULL,
    CONSTRAINT tid4 FOREIGN KEY (T_ID)
    REFERENCES tracks(T_ID)
);

CREATE TABLE contains (
    P_ID number(5) PRIMARY KEY NOT NULL,
    T_ID number(5) NOT NULL,
    CONSTRAINT tid FOREIGN KEY (T_ID)
    REFERENCES tracks(T_ID)
);

CREATE TABLE composes (
    Artist_ID number(5) PRIMARY KEY NOT NULL,
    T_ID number(5) NOT NULL,
    CONSTRAINT tid3 FOREIGN KEY (T_ID)
    REFERENCES tracks(T_ID)
);

CREATE TABLE creates (
    Artist_ID number(5) PRIMARY KEY NOT NULL,
    Album_ID number(5) NOT NULL,
    CONSTRAINT albumid FOREIGN KEY (Album_ID)
    REFERENCES album(Album_ID)
);

CREATE TABLE has (
      Album_ID number (5) PRIMARY KEY NOT NULL, 
      Album_Name varchar2(150) NOT NULL, 
      Album_Date date NOT NULL,
      T_ID number (5) NOT NULL,
      CONSTRAINT tid2 FOREIGN KEY (T_ID)
      REFERENCES tracks(T_ID)
);


CREATE TABLE belongs (
    T_ID number(5) PRIMARY KEY NOT NULL,
    G_ID number(5) NOT NULL,
    CONSTRAINT gid FOREIGN KEY (G_ID)
    REFERENCES genre(G_ID)
);

