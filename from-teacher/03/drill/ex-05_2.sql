SET
  search_path TO w03;

SELECT
  id,
  name,
  buff,
  CASE
    WHEN buff = 0 THEN '--'
    WHEN buff < 0 THEN 'debuff'
    ELSE 'buff'
  END AS "status"
FROM
  characters;
