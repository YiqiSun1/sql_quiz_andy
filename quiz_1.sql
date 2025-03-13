/*
 * For each problem below,
 * write the output of the SELECT statement in both sqlite3 and postgres.
 * If the command does not result in an error, you should provide the full table of the output.
 * (The names of columns are unimportant.)
 * If the command does result in an error, just write "error".
 * (You do not need to provide the full error message.)
 * If the output of both sqlite3 and postgres is the same,
 * you can just write "sqlite3 and postgres are the same" instead of redrawing the output.
 */


-- Problem 1
SELECT count(*) FROM basket_a WHERE NOT (fruit_a = NULL) IS NULL;








-- Problem 2
SELECT fruit_a, count(*)
FROM basket_a
WHERE fruit_a LIKE '%a%'
GROUP BY fruit_a
HAVING count(*) > 0
ORDER BY fruit_a;









-- Problem 3
SELECT count(*)
FROM basket_a
JOIN basket_b USING (id)
WHERE id IS NULL;









-- Problem 4
SELECT count(basket_a.fruit_a)
FROM basket_a
JOIN basket_b ON (basket_a.id > basket_b.id);
