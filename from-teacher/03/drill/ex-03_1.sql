SET
  search_path TO w03;

SELECT
  id,
  name,
  level,
  buff,
  '要調査 / 問題なし' AS "不正行為の疑い?"
FROM
  characters;