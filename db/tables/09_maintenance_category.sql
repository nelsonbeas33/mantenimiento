use mantenimiento;

CREATE TABLE maintenance_category(
	[id]   INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	[cat_maintenance_category_id] INT NOT NULL,
	[maintenance_id] INT NOT NULL,
	FOREIGN KEY ([cat_maintenance_category_id]) REFERENCES cat_maintenance_category(id),
	FOREIGN KEY ([maintenance_id]) REFERENCES maintenance(id),
);