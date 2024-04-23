use mantenimiento;

CREATE TABLE element(
	[id]   INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	[name] CHAR(50) NOT NULL,
	[desc] CHAR(50) NOT NULL,
	[path] CHAR(200) NOT NULL,
	[resX] INT,
	[resY] INT
);