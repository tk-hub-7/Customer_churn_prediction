
--============================================CUSTOMER CHURN PREDICTION ANALYSIS===========================================--

drop table if exists churn

--CREATING TABLE

create table churn(
         customerID varchar(120),
		 gender varchar(10),
		 SeniorCitizen numeric,
		 Partner varchar(5),
		 Dependents varchar(5),
		 tenure  numeric,
		 PhoneService varchar(5),
		 MultipleLines varchar(140),
		 InternetService varchar(142),
		 OnlineSecurity varchar(146),
		 OnlineBackup varchar(146),
		 DeviceProtection varchar(155),
		 TechSupport varchar(145),
		 StreamingTV	varchar(145),
		 StreamingMovies varchar(155),
		 Contract varchar(127),
		 PaperlessBilling varchar(147),
		 PaymentMethod varchar(200),
		 MonthlyCharges numeric(10,2),
		 TotalCharges numeric(10,2),
		 Churn varchar(5)

)

--LOADING SAMPLE DATA

select * from churn

--=================================DATA VALIDATION===============================--

--FINDING TOTAL RECORDS

select count(*) as total_records from churn     --7043 records

--CHECK FOR DUPLICATE CUSTOMERS

select customerid,count(*) from churn           --no duplicates found
group by 1
having count(*)>1

--CHECKING CHURN DISTRIBUTION

select churn,count(*) as customers              --"No"	5174 "Yes"	1869
from churn
group by churn   

--===============================KPI EXECUTION===================================--

--OVERALL CHURN RATE

select round(
       100.0*sum(case when churn='Yes' then 1 else 0 end)/count(*),
	   2) as churn_rate
from churn                                        --26.54

--TOTAL REVENUE

select sum(totalcharges) as total_revenue         --16056168.70
from churn

--REVENUE AT RISK

select sum(totalcharges) as total_revenue         --2862926.90
from churn
where churn='Yes'

--AVERAGE MONTHLY REVENUE PER CUSTOMER

select round(avg(monthlycharges),2) as average_monthly_revenue
from churn                                        --64.76

--========================================BUSINESS ANALYSIS===================================--

--These queries start answering why customers leave.

--1.CHURN BY CONTRACT TYPE
select contract,
       round(
       100.0*sum(case when churn='Yes' then 1 else 0 end)/count(*),2                 
       ) as churn_rate
from churn
group by contract
order by churn_rate desc

--2.CHURN BY INTERNET SERVICE
select internetservice,
       round(
       100.0*sum(case when churn='Yes' then 1 else 0 end)/count(*),2                 
       ) as churn_rate
from churn
group by internetservice
order by churn_rate desc

--3.CHURN BY PAYMENT METHOD
select paymentmethod,
       round(
       100.0*sum(case when churn='Yes' then 1 else 0 end)/count(*),2                 
       ) as churn_rate
from churn
group by paymentmethod
order by churn_rate desc

--======================================CUSTOMER SEGMENTATION===================================--

--4.CHURN BY TENURE GROUPS
select case 
       when tenure<12 then 'New customers'
	   when tenure<36 then 'Growing customers'
	   when tenure<60 then 'Established customers'
	   else 'Loyal customers'
	   end as customer_segment,
	   count(*) as customers,
	   round(
       100.0*sum(case when churn='Yes' then 1 else 0 end)/count(*),2                 
       ) as churn_rate
from churn
group by customer_segment
order by churn_rate desc

--======================================HIGH RISK CUSTOMER PROFILES=============================--
select contract,
       internetservice,
	   paymentmethod,
	   count(*) as customers,
	   round(
       100.0*sum(case when churn='Yes' then 1 else 0 end)/count(*),2) 
	   as churn_rate
	   from churn
group by 1,2,3
having count(*)>20
order by churn_rate desc
limit 10
	  

