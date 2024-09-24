-- Cleaning the Product Dataset
SELECT 
	 p.[ProductKey]
	,p.[ProductAlternateKey] AS ProdcutItemCode
	--,[ProductSubcategoryKey]
	--,[WeightUnitMeasureCode]
	--,[SizeUnitMeasureCode]
	,p.[EnglishProductName] AS [Product Name]
	,ps.EnglishProductSubcategoryName AS [Sub category] -- Joined n from Sub Category Table
	,pc.EnglishProductCategoryName AS [Product Category] -- Joined in from Category Table
	--,[SpanishProductName]
	--,[FrenchProductName]
	--,[StandardCost]
	--,[FinishedGoodsFlag]
	,p.[Color] AS [Product Colour]
	--,[SafetyStockLevel]
	--,[ReorderPoint]
	--,[ListPrice]
	,p.[Size] AS [Product Size]
	--,[SizeRange]
	--,[Weight]
	--,[DaysToManufacture]
	,p.[ProductLine] AS [Product Line]
	--,[DealerPrice]
	--,[Class]
	--,[Style]
	,p.[ModelName] AS [Product Model Name]
	--,[LargePhoto]
	,p.[EnglishDescription] [Product Description]
	--,[FrenchDescription]
	--,[ChineseDescription]
	--,[ArabicDescription]
	--,[HebrewDescription]
	--,[ThaiDescription]
	--,[GermanDescription]
	--,[JapaneseDescription]
	--,[TurkishDescription]
	--,[StartDate]
	--,[EndDate]
	,ISNULL (p.Status, 'Outdated') AS [Product Status]
FROM
	dbo.DimProduct as p
	LEFT JOIN dbo.DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory as pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
ORDER BY
	p.ProductKey asc
