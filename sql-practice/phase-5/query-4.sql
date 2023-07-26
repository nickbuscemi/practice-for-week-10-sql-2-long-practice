-- Find the first and last names of the owner whose cats are born after the year 2015
-- Your code here
SELECT owners.first_name, owners.last_name
FROM owners
JOIN cat_owners ON owners.owner_id = cat_owners.owner_id
JOIN cats ON cat_owners.cat_id = cats.cat_id
WHERE cats.birth_year > 2015;
