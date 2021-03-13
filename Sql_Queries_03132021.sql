--list all customers (full names, customer ID, and country) who are 
--not in the US

  Use Chinook

  SELECT CustomerId, FirstName, LastName, Country
  FROM Customer
  WHERE Country != 'USA';


 --List all customers from brazil
  SELECT * FROM customer
  WHERE Country = 'brazil'

-- 3. List all sales agents

  SELECT * FROM employee
  WHERE Title ='Sales Support Agent';

-- 4. Show a list of all countries in billing addresses on invoices.

   select distinct billingcountry from invoice;

-- 5. How many invoices were there in 2009, and what was the sales total for that year?
      SELECT count(i.invoiceid) AS TotalCount, SUM(i.total) AS TotalSum
      FROM invoice AS i
      WHERE i.invoicedate between '2009-01-01 00:00:00' and '2009-12-31 00:00:00';
         
-- 6. How many line items were there for invoice #37?
      SELECT COUNT(i.invoicelineid)
      FROM invoiceline AS i
      WHERE i.invoiceid = 37

-- 7. How many invoices per country?

  s   SELECT COUNT(i.InvoiceId) AS TotalInvoice,i.BillingCountry
      FROM invoice AS i
	  GROUP BY i.BillingCountry
      



-- 8. Show total sales per country, ordered by highest sales first

     
      SELECT i.billingcountry, SUM(total) AS 'TotalSales'
      FROM invoice AS i
      GROUP BY billingcountry
      ORDER BY totalsales DESC

