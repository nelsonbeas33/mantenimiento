USE [mantenimiento]
GO

--elementos tipo linea
INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'linea' AND [elem].[name] = 'banda transportadora'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'linea' AND [elem].[name] = 'banda transportadora 2'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'linea' AND [elem].[name] = 'banda transportadora 3'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'linea' AND [elem].[name] = 'banda transportadora 4'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'linea' AND [elem].[name] = 'banda transportadora 5'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'linea' AND [elem].[name] = 'maquina con banda'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'linea' AND [elem].[name] = 'maquina de comida'




-- elementos tipo maquina
INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'maquina' AND [elem].[name] = 'impresora 3D'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'maquina' AND [elem].[name] = 'CNC'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'maquina' AND [elem].[name] = 'Prensa'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'maquina' AND [elem].[name] = 'Cierra'



-- elementos tipo robot 
INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'robot' AND [elem].[name] = 'brazo robotico'

INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'robot' AND [elem].[name] = 'brazo robotico 2'



-- elementos tipo sitios
INSERT INTO [dbo].[element_category] ([cat_element_category_id], [element_id])
	SELECT TOP 1 [cat].[id] AS [cat_element_category_id], [elem].[id] AS [element_id] FROM [mantenimiento].[dbo].[cat_element_category] AS cat FULL OUTER JOIN [element] AS elem
	ON 1 = 1
	WHERE [cat].[name] = 'sitios' AND [elem].[name] = 'industria'
GO



