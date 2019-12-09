-- Database Queries

-- Find all customers with postal code 1010
SELECT *
FROM customers
where postalcode = '1010'

-- Find the phone number for the supplier with the id 11
SELECT phone
FROM [Suppliers]
WHERE supplierid = 11

-- List first 10 orders placed, sorted descending by the order date
SELECT *
FROM [Orders]
ORDER by orderdate desc 
LIMIT 10

-- Find all customers that live in London, Madrid, or Brazil
SELECT * 
FROM [Customers]
WHERE city in
('London', 'Madrid') 
or Country = 'Brazil'

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"
insert into customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
values
    ('The Shire', 'Bilbo Baggins', '1 Hobbit-Hole', 'Bag End', '111', 'Middle Earth')

-- mild look up
SELECT *
FROM [Customers]
where customername like "The Shire"

-- Update Bilbo Baggins record so that the postal code changes to "11122"
update customers
set postalcode = 11122
where customerId = 92

-- mild look up
SELECT *
FROM [Customers]
where customername like "The Shire"

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted
SELECT count(distinct(city))
FROM [Customers]

-- answer 70 with my added customer Bilbo Baggins from Middle Earth

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name
SELECT *
FROM [Suppliers]
WHERE length(SupplierName) > 20

-- answer 11
