SET
  search_path TO w03;

SELECT
  4 AS "grade",
  'M' AS "course",
  name,
  age || '歳' AS "age"
FROM
  users;