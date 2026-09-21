

------------- Data Exploration – Check Distinct Values & Distribution -------------
-----------------------------------------------------------------------------------

-- Distinct Genders & its Distribution (%)
SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Gender


-- Distinct Contracts & its Distribution (%)
SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Contract


-- Distinct Customer Status, its Count & Total Revenue, its Distribution (%)
SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100.0  as RevPercentage
from stg_Churn
Group by Customer_Status


-- Distinct States & its Distribution (%)
SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc
