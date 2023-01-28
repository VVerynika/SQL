--1. Find the model number, speed and hard drive capacity for all the PCs with prices below $500.
Result set: model, speed, hd.

SELECT model, speed, hd from pc
WHERE price < 500

--2. List all printer makers. Result set: maker.

SELECT DISTINCT(product.maker)FROM product
WHERE product.type = 'Printer'

--3. Find the model number, RAM and screen size of the laptops with prices over $1000.

SELECT product.model, laptop.ram, laptop.screen FROM product, laptop
WHERE product.model = Laptop.model AND product.type = 'Laptop' AND laptop.price > 1000

--4. Find all records from the Printer table containing data about color printers.

SELECT * FROM printer
WHERE color = 'y'

--5. Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.

SELECT pc.model, pc.speed, pc.hd FROM pc
WHERE (cd = '12x' OR cd = '24x') AND price < 600

--6. For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.

SELECT DISTINCT product.maker, Laptop.speed FROM product, laptop 
WHERE laptop.hd >= 10 AND product.type = 'laptop' AND product.model = laptop.model

--7. Get the models and prices for all commercially available products (of any type) produced by maker B.

SELECT laptop.model, price FROM laptop
INNER JOIN product ON laptop.model = product.model 
AND product.maker = 'B'
UNION
SELECT PC.model, price FROM pc
INNER JOIN product ON pc.model = product.model
AND product.maker = 'B'
UNION
SELECT printer.model, price FROM printer
INNER JOIN product ON printer.model = product.model
AND product.maker = 'B'

SELECT laptop.model, price
FROM laptop JOIN
product ON product.model = laptop.model
WHERE product.maker = 'B'
UNION 
SELECT PC.model, price
FROM pc JOIN
product ON product.model = PC.model
WHERE product.maker = 'B'
UNION 
SELECT printer.model, price
FROM printer JOIN
product ON product.model = printer.model
WHERE product.maker = 'B'

--8. Find a maker that produces PCs, but not PC notebooks.

SELECT DISTINCT maker FROM product
WHERE type = 'PC'
AND maker NOT IN
(SELECT maker FROM product
WHERE type = 'laptop')

--9. Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.

SELECT  DISTINCT product.maker FROM product
JOIN pc ON pc.model = product.model
WHERE speed >= 450

--10. Find the printer models having the highest price. Result set: model, price.

SELECT model, price FROM printer
WHERE price = (SELECT MAX(price) FROM printer)

--11. Find out the average speed of PCs.

SELECT AVG(speed) FROM pc

--12. Find out the average speed of the laptops priced over $1000.

SELECT AVG(speed) FROM laptop
WHERE price > 1000

