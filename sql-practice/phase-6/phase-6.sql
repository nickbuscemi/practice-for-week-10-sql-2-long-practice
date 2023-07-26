-- Update the toy with the name of "Cheetos" to have a name of "Pooky"
-- Your code here
UPDATE toys
SET name = 'Pooky'
WHERE toy_id = (
  SELECT toy_id
  FROM toys
  JOIN cats ON toys.cat_id = cats.cat_id
  WHERE toys.name = 'Cheetos' AND cats.name = 'Garfield'
);
