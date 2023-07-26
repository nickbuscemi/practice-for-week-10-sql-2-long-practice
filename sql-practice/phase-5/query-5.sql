-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
SELECT cats.name
FROM cats
JOIN cat_owners ON cats.cat_id = cat_owners.cat_id
JOIN owners ON cat_owners.owner_id = owners.owner_id
WHERE owners.first_name || ' ' || owners.last_name IN ('George Beatty', 'Melynda Abshire');
