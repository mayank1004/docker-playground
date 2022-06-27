IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='car' and xtype='U')
    CREATE TABLE car (
        Name varchar(64) not null
    )
GO
INSERT INTO car 
VALUES ("BMW");