--- Day 3

-- Select

SELECT * FROM "house_prices";

-- Select 2 Columns
SELECT "SqFt", "Price" FROM "house_prices";

-- Select Calculate
Select "Home", "Price", "Price"*1.10 as "Price_With_PPN", CAST("Price"*1.10 as INT) as "Price_With_PPN" FROM "house_prices";

--- Order By
Select "Home", "Price", "Price"*1.10 as "Price_With_PPN", CAST("Price"*1.10 as INT) as "Price_With_PPN" FROM "house_prices" order by"Price","Home" Desc;

--- Agregate
---- Count
Select count(*) as "total_rumah" from "house_prices";
Select count(distinct "Home") from "house_prices";

---- Average
Select avg("Price") as "avg_price" from "house_prices";

---- Min and Max
Select MIN("Price") as "min_price", Max("Price") as "max_price" from "house_prices";


---- SUM
Select Sum("Price") as "total_price" from "house_prices";

--- GROUP BY
---- Melihat Jumlah Rumah berdasarkan Bedrooms
Select count("Home") as "total_rumah" from "house_prices" group by "Bedrooms";

Select "Bedrooms" from "house_prices";

---- Tampilkan Bedrooms, Harga Rata-Rata per Masing-Masing Bedrooms;
Select "Bedrooms", Avg("Price") as "avg_price_home" from "house_prices" group by "Bedrooms";

---- Tampilkan Bedrooms, Count, Min Price, Max Price, Avg Price berdasarkan Bedrooms
SELECT "Bedrooms",
    COUNT("Bedrooms") AS "bedrooms_no",
    MIN("Price") AS "min_Price",
    MAX("Price") AS "max_Price",
    CAST(AVG("Price") AS INT) AS "avg_price"
FROM 
    "house_prices"
GROUP BY 
    "Bedrooms";

-- Having
---- Tampilakn Rumah mana saja yg memiliki Bedrooms >3
SELECT "Bedrooms", 
	count(*) as "total_rumah" from "house_prices" GROUP BY "Bedrooms" having "Bedrooms" > 3;


-- WHERE/Filter tanpa group by
SELECT * from  "house_prices" Where "Bedrooms">3;


-- Combination
--- Tampilkan Bedrooms, Total Bedrooms, Avg Price dimana Price >200000 dan AVG Price >400000 dan order by avg_price desc 

select "Bedrooms", count(*) as "total_unit", AVG("Price") as "avg_price" from "house_prices"
Where "Price" > 100000
Group by "Bedrooms"
Having avg("Price")>130000
order by "avg_price" desc;







