CREATE TABLE my_cats (
  cat_name TEXT PRIMARY KEY,
  color TEXT NOT NULL,
  cat_weight INTEGER NOT NULL,
  personality TEXT NOT NULL
);

CREATE TABLE wishlist (
  id INTEGER PRIMARY KEY,
  item_name TEXT NOT NULL,
  quantity INTEGER NOT NULL,
  price DOUBLE NOT NULL,
  reason TEXT NOT NULL
);

INSERT INTO my_cats (cat_name, color, cat_weight, personality)
VALUES
  ('Kiba', 'Orange and White', 16, 'Lone-wolf'),
  ('Kato', 'Grey', 14, 'Friendly'),
  ('Kumi', 'White and Grey', 15, 'Prideful'),
  ('Pixel', 'Calico', 9, 'Dog-Like');

INSERT INTO wishlist (item_name, quantity, price, reason)
VALUES
  ('House', 1, 300000, 'Moving up'),
  ('Gaming Setup', 3, 20000, 'All three of us can have an amazing set up and play together'),
  ('Home Gym/Sauna', 1, 50000, 'Staying fit'),
  ('Invest/Save', 1, 630000, 'For Future Use/Security');

--this command aligns the columns
.mode "column" 
--this command adds the field names to the columns
.headers "on" 

.print
.print -----------------------------------Query problem 1-----------------------------------\n
.print FROM my_cats
.print \n----Resulting Table-----\n
SELECT * FROM my_cats;

.print
.print -----------------------------------Query problem 2-----------------------------------\n
.print FROM wishlist
.print \n----Resulting Table-----\n
SELECT * FROM wishlist;

.print
.print -----------------------------------Query problem 3-----------------------------------\n
.print FROM my_cats
.print \n----Resulting Table-----\n
SELECT cat_name, personality FROM my_cats WHERE cat_name = 'Kumi';

.print
.print -----------------------------------Query problem 3-----------------------------------\n
.print FROM wishlist;
.print \n----Resulting Table-----\n
SELECT item_name, quantity, price, reason FROM wishlist WHERE id = 3;