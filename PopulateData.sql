SET FOREIGN_KEY_CHECKS=0;


INSERT INTO DISCOUNT
VALUES (0, 'Employee', 15, NULL);

INSERT INTO DISCOUNT
VALUES (1, 'Lunch Special Medium', NULL, 1);

INSERT INTO DISCOUNT
VALUES (2, 'Lunch Special Large', NULL, 2);

INSERT INTO DISCOUNT
VALUES (3, 'Specialty Pizza', NULL, 1.5);

INSERT INTO DISCOUNT
VALUES (4, 'Gameday Special', 20, NULL);

INSERT INTO BASE_PRICE
VALUES ('small', 'Thin', 3, 0.5);

INSERT INTO BASE_PRICE
VALUES ('small', 'Original', 3, 0.75);

INSERT INTO BASE_PRICE
VALUES ('small', 'Pan', 3.5, 1);

INSERT INTO BASE_PRICE
VALUES ('small', 'Gluten-Free', 4, 2);

INSERT INTO BASE_PRICE
VALUES ('medium', 'Thin', 5, 1);

INSERT INTO BASE_PRICE
VALUES ('medium', 'Original', 5, 1.5);

INSERT INTO BASE_PRICE
VALUES ('medium', 'Pan', 6, 2.25);

INSERT INTO BASE_PRICE
VALUES ('medium', 'Gluten-Free', 6.25, 3);

INSERT INTO BASE_PRICE
VALUES ('Large', 'Thin', 8, 1.25);

INSERT INTO BASE_PRICE
VALUES ('Large', 'Original', 8, 2);

INSERT INTO BASE_PRICE
VALUES ('Large', 'Pan', 9, 3);

INSERT INTO BASE_PRICE
VALUES ('Large', 'Gluten-Free', 9.5, 4);

INSERT INTO BASE_PRICE
VALUES ('X-Large', 'Thin', 10, 2);

INSERT INTO BASE_PRICE
VALUES ('X-Large', 'Original', 10, 3);

INSERT INTO BASE_PRICE
VALUES ('X-Large', 'Pan', 11.5, 4.5);

INSERT INTO BASE_PRICE
VALUES ('X-Large', 'Gluten-Free', 12.5, 6);

INSERT INTO TOPPINGS
VALUES (0,'Pepperoni', 1.25, 0.2, 100, 2, 2.75, 3.5, 4.5);

INSERT INTO TOPPINGS
VALUES (1,'Sausage', 1.25, 0.15, 100, 2.5, 3, 3.5, 4.25);

INSERT INTO TOPPINGS
VALUES (2,'Ham', 1.5, 0.15, 78, 2, 2.5, 3.25, 4);

INSERT INTO TOPPINGS
VALUES (3,'Chicken', 1.75, 0.25, 56, 1.5, 2, 2.25, 3);

INSERT INTO TOPPINGS
VALUES (4,'Green Pepper', 0.5, 0.02, 79, 1, 1.5, 2, 2.25);

INSERT INTO TOPPINGS
VALUES (5,'Onion', 0.5, 0.02, 85, 1, 1.5, 2, 2.75);

INSERT INTO TOPPINGS
VALUES (6,'Roma tomato', 0.75, 0.03, 86, 2, 3, 3.5, 4.5);

INSERT INTO TOPPINGS
VALUES (7,'Mushrooms', 0.75, 0.1, 52, 1.5, 2, 2.5, 3);

INSERT INTO TOPPINGS
VALUES (8,'Black Olives', 0.6, 0.1, 39, 0.75, 1, 1.5, 2);

INSERT INTO TOPPINGS
VALUES (9,'Pineapple', 1, 0.25, 15, 1, 1.25, 1.75, 2);

INSERT INTO TOPPINGS
VALUES (10,'Jalapenos', 0.5, 0.05, 64, 0.5, .75, 1.25, 1.75);

INSERT INTO TOPPINGS
VALUES (11,'Banana Peppers', 0.5, 0.05, 36, 0.6, 1, 1.3, 1.75);

INSERT INTO TOPPINGS
VALUES (12,'Regular Cheese', 1.5, 0.12, 250, 2, 3.5, 5, 7);

INSERT INTO TOPPINGS
VALUES (13,'Four Cheese Blend', 2, 0.15, 150, 2, 3.5, 5, 7);

INSERT INTO TOPPINGS
VALUES (14,'Feta Cheese', 2, 0.18, 75, 1.75, 3, 4, 5.5);

INSERT INTO TOPPING_ON
VALUES (15,'Goat Cheese', 2, 0.2, 54, 1.6, 2.75, 4, 5.5);

INSERT INTO TOPPING_ON
VALUES (16,'Bacon', 1.5, 0.25, 89, 1, 1.5, 2, 3);


INSERT INTO ORDERS
VALUES (0, 0, '2020-03-05 12:03:00');

INSERT INTO PIZZA
VALUES (0, 0, true, 'Thin', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 0, true);

INSERT INTO TOPPING_ON
VALUES (0, 0, false);

INSERT INTO TOPPING_ON
VALUES (1, 0, false);



INSERT INTO INSIDE
VALUES (0, 14);

INSERT INTO SEATS
VALUES (0, 1);

INSERT INTO SEATS
VALUES (0, 2);

INSERT INTO SEATS
VALUES (0, 3);

INSERT INTO ORDER_DISCOUNT
VALUES (2, 0);


INSERT INTO ORDERS
VALUES (1, 1, '2020-03-03 12:05:00');

INSERT INTO PIZZA
VALUES (1, 1, true, 'Pan', 'medium');

INSERT INTO TOPPING_ON
VALUES (14, 1, false);

INSERT INTO TOPPING_ON
VALUES (8, 1, false);

INSERT INTO TOPPING_ON
VALUES (6, 1, false);

INSERT INTO TOPPING_ON
VALUES (7, 1, false);

INSERT INTO TOPPING_ON
VALUES (11, 1, false);

INSERT INTO ORDER_DISCOUNT
VALUES (1, 1);

INSERT INTO PIZZA_DISCOUNT
VALUES (3, 1);

INSERT INTO INSIDE
VALUES (1, 4);

INSERT INTO SEATS
VALUES (1, 1);




INSERT INTO ORDERS
VALUES (2, 2, '2020-03-03 12:05:00');

INSERT INTO PIZZA
VALUES (2, 2, true, 'Original', 'small');

INSERT INTO INSIDE
VALUES (2, 4);

INSERT INTO TOPPING_ON
VALUES (12, 2, false);

INSERT INTO TOPPING_ON
VALUES (3, 2, false);

INSERT INTO TOPPING_ON
VALUES (11, 2, false);

INSERT INTO SEATS
VALUES (2,2);

INSERT INTO SEATS
VALUES (2,2);


INSERT INTO ORDERS
VALUES (3, 3, '2020-03-03 09:30:00');

INSERT INTO CUSTOMER
VALUES (3);

INSERT INTO OUTSIDE
VALUES (3, '8642545861', 'Andrew Wilkes-Krier');

INSERT INTO PIZZA
VALUES (3, 3, true, 'Original', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 3, false);

INSERT INTO TOPPING_ON
VALUES (0, 3, false);

INSERT INTO PIZZA
VALUES (4, 3, true, 'Original', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 4, false);

INSERT INTO TOPPING_ON
VALUES (0, 4, false);

INSERT INTO PIZZA
VALUES (5, 3, true, 'Original', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 5, false);

INSERT INTO TOPPING_ON
VALUES (0, 5, false);

INSERT INTO PIZZA
VALUES (6, 3, true, 'Original', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 6, false);

INSERT INTO TOPPING_ON
VALUES (0, 6, false);

INSERT INTO PIZZA
VALUES (7, 3, true, 'Original', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 7, false);

INSERT INTO TOPPING_ON
VALUES (0, 7, false);

INSERT INTO PIZZA
VALUES (8, 3, true, 'Original', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 8, false);

INSERT INTO TOPPING_ON
VALUES (0, 8, false);

INSERT INTO PIZZA
VALUES (9, 3, true, 'Original', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 9, false);

INSERT INTO TOPPING_ON
VALUES (0, 9, false);

INSERT INTO ORDERS
VALUES (4, 3, '2020-03-05 07:11:00');

INSERT INTO DELIVER
VALUES (3, '115 Party Blvd, Anderson SC 29621');


INSERT INTO PIZZA
VALUES (10, 4, true, 'Original', 'X-Large');

INSERT INTO TOPPING_ON
VALUES (13, 10, false);

INSERT INTO TOPPING_ON
VALUES (0, 10, false);

INSERT INTO TOPPING_ON
VALUES (1, 10, false);

INSERT INTO PIZZA
VALUES (11, 4, true, 'Original', 'X-Large');

INSERT INTO TOPPING_ON
VALUES (13, 11, false);

INSERT INTO TOPPING_ON
VALUES (2, 11, true);

INSERT INTO TOPPING_ON
VALUES (9, 11, true);

INSERT INTO PIZZA
VALUES (12, 4, true, 'Original', 'X-Large');

INSERT INTO TOPPING_ON
VALUES (13, 12, false);

INSERT INTO TOPPING_ON
VALUES (10, 12, false);

INSERT INTO TOPPING_ON
VALUES (16, 12, false);

INSERT INTO PIZZA_DISCOUNT
VALUES (3, 11);

INSERT INTO ORDER_DISCOUNT
VALUES (4, 4);



INSERT INTO CUSTOMER
VALUES (4);

INSERT INTO ORDERS
VALUES (5, 4,'2020-03-02 17:30:00');

INSERT INTO OUTSIDE
VALUES (4, '8644749953', 'Matt Engers');

INSERT INTO PIZZA
VALUES (12, 5, true,  'Gluten-Free', 'X-Large');

INSERT INTO TOPPING_ON
VALUES (4, 12, false);

INSERT INTO TOPPING_ON
VALUES (5, 12, false);

INSERT INTO TOPPING_ON
VALUES (6, 12, false);

INSERT INTO TOPPING_ON
VALUES (7, 12, false);

INSERT INTO TOPPING_ON
VALUES (8, 12, false);

INSERT INTO TOPPING_ON
VALUES (15, 12, false);

INSERT INTO PIZZA_DISCOUNT
VALUES (3, 12);

INSERT INTO CUSTOMER
VALUES (6);

INSERT INTO ORDERS
VALUES (7, 6, '2020-03-02 18:17:00');

INSERT INTO OUTSIDE
VALUES (6, '8642328944', 'Frank Turner');

INSERT INTO DELIVER
VALUES (6, '6745 Wessex St Anderson SC 29621');

INSERT INTO PIZZA
VALUES (14, 7, true, 'Thin', 'Large');

INSERT INTO TOPPING_ON
VALUES (3, 14, false);

INSERT INTO TOPPING_ON
VALUES (4, 14, false);

INSERT INTO TOPPING_ON
VALUES (5, 14, false);

INSERT INTO TOPPING_ON
VALUES (7, 14, false);

INSERT INTO TOPPING_ON
VALUES (13, 14, false);


INSERT INTO CUSTOMER
VALUES (5);

INSERT INTO ORDERS
VALUES (6, 5, '2020-03-06 20:32:00');


INSERT INTO OUTSIDE
VALUES (5, '8648785679', 'Milo Auckerman');

INSERT INTO DELIVER
VALUES (5, '8879 Suburban Home, Anderson, SC, 29621');

INSERT INTO PIZZA
VALUES (13, 6, true, 'Thin', 'Large');

INSERT INTO TOPPING_ON
VALUES (13, 13, true);


INSERT INTO PIZZA
VALUES (15, 6, true, 'Thin', 'Large');

INSERT INTO TOPPING_ON
VALUES (12, 15, false);

INSERT INTO TOPPING_ON
VALUES (0, 15, false);

INSERT INTO ORDER_DISCOUNT
VALUES (0, 6);
SET FOREIGN_KEY_CHECKS=0;
