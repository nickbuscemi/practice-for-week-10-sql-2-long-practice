-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT cats.name 
FROM cats
JOIN cat_owners ON cats.cat_id = cat_owners.cat_id
JOIN owners ON cat_owners.owner_id = owners.owner_id
WHERE owners.first_name LIKE 'H%';