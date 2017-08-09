
-- Create a Table
CREATE TABLE todos(
   id SERIAL PRIMARY KEY,
   title VARCHAR(255) NOT NULL,
   details CHAR(1000),
   priority INT DEFAULT 1 NOT NULL,
   created_at TIMESTAMP NOT NULL,
   completed_at TIMESTAMP
);

-- Add 5 todo items
insert INTO todos (title, details, priority, created_at) VALUES
  ('Take out trash', 'Dump borther into trash bec. he is trash', 2, now()),
  ('Mop Yard', 'Get rid of all the moles with this great mop', 10, now()),
  ('Power wash the tub', 'get all the danky grime off them grout bubbles...yo!', 2.5, now()),
  ('Listen to Friday', 'Gouge out eye balls while vomiting terrible lip sounds', 5, now()),
  ('Rake the leaves', 'Cut my foot while raking the leaves bec. my Dad never taught me how to do it the right way', 3, now());

-- Select only uncompleted tasks
SELECT * FROM todos
  WHERE completed_at is NULL;

-- Select items with priority level above 1
SELECT * FROM todos
  WHERE priority > 1;

-- Update a item to complete that was not already complete
UPDATE todos SET completed_at = now() WHERE id = 1;

-- Delete todos that have been completed_at
DELETE FROM todos WHERE completed_at is not null;
