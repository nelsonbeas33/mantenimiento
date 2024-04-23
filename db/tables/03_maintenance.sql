use mantenimiento;

CREATE TABLE maintenance(
	[id]   INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	[line_element_id] INT NOT NULL,
	[user_id] INT, --PENDIENTE PARA DESARROLLO DE USUARIOS
	[final_date] DATETIME,
	[inicial_date] DATETIME NOT NULL,
	[success] BIT NOT NULL,
	[root_cause] CHAR(50) NOT NULL,
	[sub_cause] CHAR(50),
	[desc] CHAR(100),
	[name] CHAR(50)
);