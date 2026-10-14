SET
  search_path TO w03;

SELECT
  id,
  name,
  guild,
  COALESCE(guild, '(' || name || ')') AS "guild or (name)"
FROM
  characters;