SET
  search_path TO w03;

SELECT DISTINCT
  COALESCE(guild, '未所属') AS "ギルド",
  job AS "ジョブ"
FROM
  characters;

-- 別解 (ORDER BY句を使用)
SELECT DISTINCT
  COALESCE(guild, '未所属') AS "ギルド",
  job AS "ジョブ"
FROM
  characters
ORDER BY
  COALESCE(guild, '未所属'),
  job;
