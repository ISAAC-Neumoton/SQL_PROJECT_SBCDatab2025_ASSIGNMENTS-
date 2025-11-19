/*
Accounts with High Balances
Account balance is greater than 100000
Customers in Specific Cities
Customer from either Lagos or Abuja
Inactive Accounts
Those whose accounts aren’t active
Transactions in a Specific Range
Were transactions amount is between 1000 and 10000
Customers with Multiple Conditions
Customers from from Lagos city whose country is Nigeria
*/

USE banking_system_db;
-- ACCOUNT BALANCE GRETER THN 100000
SELECT*
FROM Accounts
WHERE balance > 100000

--SELECT CUSTOMERS IN SPECIFIC CITIES
--IN lagos or Abuja
SELECT *
FROM Customers
WHERE city IN ('Lagos', 'Abuja');

--alternatively
SELECT *
FROM Customers
WHERE city = 'Lagos'  OR city ='Abuja';

--CHECK INACTIVE ACCOUNTS
SELECT *
FROM Accounts
WHERE  acc_status = 'Inactive'

--Transaction a specific range (between 1000 and 10000)
--sort in desc
--GROUP FOR MORE INSIGHT

SELECT *
FROM Transactions
WHERE  amount BETWEEN 1000 AND  10000
ORDER BY amount DESC
