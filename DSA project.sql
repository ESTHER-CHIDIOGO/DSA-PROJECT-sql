---No 1
select product_category, sum([sales]) as [Total Sales]
from[dbo].[KMS Sql Case Study]
group by Product_Category
order by [Total Sales] desc




----- No 2
select top 3 region, Sum (sales) as [Total Sales]
from[dbo].[KMS Sql Case Study]
group by Region
order by [Total Sales] asc

------ NO 3
select product_sub_category, sum([sales]) as [Total Sales]
from [dbo].[KMS Sql Case Study]
where Region = 'ontario'
group by product_sub_category

-------No 4
select top 10 customer_name,Shipping_cost,Discount,Unit_price,Sum(Order_Quantity) as [Total shipping_cost] 
 From [dbo].[KMS Sql Case Study]
 group by customer_name,Shipping_cost,Discount,Unit_price
 order by [Total shipping_cost] desc

 ----- No 5
 select Ship_mode, sum([shipping_cost]) as [Total shipping_cost]
 From  [dbo].[KMS Sql Case Study]
 group by Ship_mode
 order by [Total Shipping_cost] desc

 ------ No 6
 Select Customer_Segment,product_sub_category,customer_name,sum([sales]) as [Total sales]
  From [dbo].[KMS Sql Case Study]
  group by Customer_Segment,Product_Sub_Category,Customer_Name
  order by [Total sales] desc

  ------ No 7
  Select Top 1*
   From [dbo].[KMS Sql Case Study]
   where Customer_Segment = 'small business'
   order by Sales desc

   ------ No 8
Select Top 1*
   From [dbo].[KMS Sql Case Study]
   where Customer_Segment = 'corporate'
   order by Order_Quantity desc

   -------- No 9
   Select Top 1*
   From [dbo].[KMS Sql Case Study]
   where Customer_Segment = 'consumer'
   order by Profit desc

   
  
 ------ No 11
  select Order_priority,order_quantity,ship_mode,shipping_cost
   From [dbo].[KMS Sql Case Study]
   group by Order_priority,order_quantity,ship_mode,shipping_cost
   order by Shipping_Cost desc

   