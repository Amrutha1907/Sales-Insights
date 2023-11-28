SELECT * FROM sales.transactions;
SELECT * FROM sales.date;
SELECT * FROM sales.transactions limit 5;
SELECT count(*) FROM sales.transactions;
SELECT count(*) FROM sales.transactions where market_code='Mark001';
SELECT * FROM sales.customers;

select sales.transactions.*,sales.date.* 
from sales.transactions
inner join sales.date 
ON sales.transactions.order_date=sales.date.date;

select sales.transactions.*,sales.date.* 
from sales.transactions
inner join sales.date 
ON sales.transactions.order_date=sales.date.date
where year='2020';

/*total Revenue/sale in the year 2020-*/

select sum(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
ON sales.transactions.order_date=sales.date.date
where year='2020';

/*total Revenue/sale in the year 2019-*/
select sum(sales.transactions.sales_amount) 
from sales.transactions
inner join sales.date
on sales.transactions.order_date=sales.date.date
where year='2019';

/*total Revenue/sale in the year 2020 in chennai-*/
select sum(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
on sales.transactions.order_date=sales.date.date
where year='2020' and sales.transactions.market_code='Mark001';

/*Distinct products sold */
select distinct product_code from sales.transactions;

/*Checking the sales_amount values, -1 and 0 */
select * from sales.transactions where sales_amount='-1';
select * from sales.transactions where sales_amount <='0';

select * from sales.transactions where sales.transactions.currency='USD';

select distinct sales.transactions.currency from sales.transactions;


