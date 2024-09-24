SELECT 
	c.customerkey AS CustomerKey 
	--,[GeographyKey]
	--,[CustomerAlternateKey]
	--,[Title]
	,c.firstname AS [FirstName]
	--,[MiddleName]
	,c.lastName AS [LastName] -- Full Name as first and last
	,[FirstName] + ' ' + [LastName] AS FullName
	--,[NameStyle]
	--,[BirthDate]
	--,[MaritalStatus]
	--,[Suffix]
	,CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
	--,[EmailAddress]
	--,[YearlyIncome]
	--,[TotalChildren]
	--,[NumberChildrenAtHome]
	--,[EnglishEducation]
	--,[SpanishEducation]
	--,[FrenchEducation]
	--,[EnglishOccupation]
	--,[SpanishOccupation]
	--,[FrenchOccupation]
	--,[HouseOwnerFlag]
	--,[NumberCarsOwned]
	--,[AddressLine1]
	--,[AddressLine2]
	--,[Phone]
	,c.DateFirstPurchase AS DateFirstPurchase      
	--,[CommuteDistance],
	,g.city AS [Customer City] 
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC
