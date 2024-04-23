use mantenimiento;

CREATE TABLE line_category(
	[id]   INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	[cat_line_category_id] INT NOT NULL,
	[line_id] INT NOT NULL,
	FOREIGN KEY ([cat_line_category_id]) REFERENCES cat_line_category(id),
	FOREIGN KEY ([line_id]) REFERENCES line(id),
);