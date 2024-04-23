use mantenimiento;

CREATE TABLE element_category(
	[id]   INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	[cat_element_category_id] INT NOT NULL,
	[element_id] INT NOT NULL,
	FOREIGN KEY ([cat_element_category_id]) REFERENCES cat_element_category(id),
	FOREIGN KEY ([element_id]) REFERENCES element(id),
);