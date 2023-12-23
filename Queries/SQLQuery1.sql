SELECT TOP (1000) [Order_ID]
      ,[Order_Priority]
      ,[Order_Quantity]
      ,[Sales]
      ,[Ship_Mode]
      ,[Profit]
      ,[Customer_Name]
      ,[Region]
      ,[Customer_Segment]
      ,[Product_Category]
      ,[Product_Sub_Category]
      ,[Product_Name]
      ,[Product_Container]
  FROM [Product].[dbo].[market]
  select Product_Name, Product_Category, Product_Sub_Category, Sales  from dbo.market order by Sales;
  select difference(Sales, Profit) as Total_Cost from dbo.market;
  select Product_Name, Region, Profit from dbo.market where Profit >100;
  select Customer_Segment, sum(Profit) as profit  from dbo.market group by Customer_Segment;
  select Product_Name, Product_Category from dbo.market order by Product_Category;
  select Order_ID, Customer_Name, Order_Quantity, Sales, Region from dbo.market where Sales >min(Sales)  order by Region;
  select Customer_Name, Product_Name,Product_Sub_Category, Order_Quantity*Sales as Total_Sales from dbo.market order by Product_Category;
  select Product_Name, sum(Order_Quantity),Product_Container from dbo.market order  by Product_Container;