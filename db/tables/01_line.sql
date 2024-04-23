use mantenimiento;

CREATE TABLE line(
	[id]   INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	[name] CHAR(50) NOT NULL,
	[desc] CHAR(50) NOT NULL
);