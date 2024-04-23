use mantenimiento;

CREATE TABLE line_element(
	[id]   INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	[line_id] INT NOT NULL,
	[element_id] INT NOT NULL,
	[Top] CHAR(10),
	[Left] char(10),
	FOREIGN KEY ([element_id]) REFERENCES element(id),
	FOREIGN KEY ([line_id]) REFERENCES line(id),
);