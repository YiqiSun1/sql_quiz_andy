/* This database is essentially the same as the postgres tutorial for joins:
 * <https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-joins/>
 * Changes include:
 * - Adding NULL columns
 * - Adding duplicate rows
 * - Changing the id name of the two tables to match
 */

DROP TABLE IF EXISTS basket_a;
DROP TABLE IF EXISTS basket_b;
CREATE TABLE basket_a (
    id INT,
    fruit_a VARCHAR(100)
);

CREATE TABLE basket_b (
    id INT,
    fruit_b VARCHAR(100)
);

INSERT INTO basket_a (id, fruit_a)
VALUES
    (1, 'Apple'),
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (NULL, 'Cucumber'),
    (4, NULL),
    (NULL, NULL);

INSERT INTO basket_b (id, fruit_b)
VALUES
    (1, 'Apple'),
    (2, 'Apple'),
    (3, 'Orange'),
    (4, 'Orange'),
    (5, 'Watermelon'),
    (NULL, 'Pear'),
    (6, NULL);
