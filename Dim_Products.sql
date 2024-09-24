--Cleansed DimProduct Table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [Product Code], 
  --[ProductSubcategoryKey],
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  ps.[EnglishProductSubcategoryName] AS [Product Subcategory], -- Joined In Product Subcategory table
  pc.[EnglishProductCategoryName] AS [Product Category],  -- Join In Product Category Table 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] AS [Product Color], 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --[ListPrice]
  p.[Size] AS [Peoduct Size], 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine] AS [ Product Line], 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName] AS [Model Name], 
  --,[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
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
  ISNULL(p.STATUS, 'Outdated') AS [ Product Status] 
FROM 
  dbo.DimProduct p 
  Left Join dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  Left Join dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  ProductKey ASC --- Ordered By Product Key
