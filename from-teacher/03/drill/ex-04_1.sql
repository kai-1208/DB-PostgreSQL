SET
  search_path TO w03;

SELECT
  id,
  name || ' (' || job || ' Lv.' || level || ')' AS "summary"
FROM
  characters;