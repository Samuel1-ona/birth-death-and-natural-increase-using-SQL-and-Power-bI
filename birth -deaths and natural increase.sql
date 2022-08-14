-- Returns all the columns in the table
SELECT * FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`;
-------------------------------------------------------------------------------------

-- filtering out birth from the Births_Deaths_or_Natural_Increase column

-- Returns all the selected columns
select period,`Births_Deaths_or_Natural_Increase`, count
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the birth from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase`="births";
-------------------------------------------------------------------------------------

-- filtering out deaths from the Births_Deaths_or_Natural_Increase column

-- Returns all the selected columns
select period,`Births_Deaths_or_Natural_Increase`, count
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the deaths from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase`="deaths";
------------------------------------------------------------------------------------

-- filtering out Natural_increase from the Births_Deaths_or_Natural_Increase column

-- Returns all the selected columns
select period,`Births_Deaths_or_Natural_Increase`, count
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the Natural_Increase from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase`="Natural_Increase";
-----------------------------------------------------------------------------------

--  The total birth count 

--  Returns selected columns witb an aggregate function sum() and alias name as ( Total Births count)
select `Births_Deaths_or_Natural_Increase` as Births , sum(count) as "Total Births count"
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the births from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase` = "births";
----------------------------------------------------------------------------------- 

-- The Total deaths count

--  Returns selected columns witb an aggregate function sum() and alias name as (Total Deaths count)
select `Births_Deaths_or_Natural_Increase` as Deaths , sum(count) as "Total Deaths count"
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the deaths from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase` = "deaths";
--------------------------------------------------------------------------------------

-- The Total Natural_increase counts

--  Returns selected columns witb an aggregate function sum() and alias name as ( Total Natural_increase count)
select `Births_Deaths_or_Natural_Increase` as  Natural_increase , sum(count) as " Total Natural_increase count"
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the Natural_Increase from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase` = "Natural_Increase";
---------------------------------------------------------------------------------------

-- To return the max births count and min birth count

--  Returns selected columns witb an aggregate function max() and alias name as ( max births count and min birth count)
select  `Births_Deaths_or_Natural_Increase` as Births,max(count) as "Max births count",min(count) as "Min Birth Count"
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the Births from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase` = "Births";
---------------------------------------------------------------------------------------

-- To return the max Deaths count and min deaths count

--  Returns selected columns witb an aggregate function max() and alias name as ( max deaths count and min death count)
select  `Births_Deaths_or_Natural_Increase` as Deaths,max(count) as "max deaths count", min(count) as "Min Death Count"
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the Deaths from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase` = "Deaths";
---------------------------------------------------------------------------------------
-- To return the max Natural_Increase count and min Natural_Increase count

--  Returns selected columns witb an aggregate function max() and alias name as ( max Natural_Increase count and min Natural_Increase count)
select  `Births_Deaths_or_Natural_Increase` as Natural_Increase,max(count) as "Max Natural_Increase count", min(count) as "Min Natural_Increase count"
-- Returns the table containing the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- filtering out the Natural_Increase from `Births_Deaths_or_Natural_Increase` column
where `Births_Deaths_or_Natural_Increase` = "Natural_Increase";
---------------------------------------------------------------------------------------
-- The top 3 birth, death and natural increase count

-- Returns the selected columns with an alies name ( Top 3 birth, death and natural increase count)
select `Births_Deaths_or_Natural_Increase`, count as "Top 3 birth, death and natural increase count"
-- Returns the table with the selected columns
FROM birth_death_natural_increase.`bd-dec21-births-deaths-natural-increase`
-- grouping the `Births_Deaths_or_Natural_Increase` according to the order format
group by `Births_Deaths_or_Natural_Increase`
-- ordering the count column to a descending format
order by count desc
-- limit to top 3 birth, death and natural increase count
limit 3;
-----------------------------------------------------------------------------------------------

