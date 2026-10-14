// sql/03/init-users.sql が実行されていることを前提としています

import "dotenv/config";
import { Client } from "pg";

const connectionString = process.env.DATABASE_URL;
if (!connectionString) throw new Error("DATABASE_URL is missing");

const client = new Client({
  connectionString,
  options: "-c search_path=w03", // この接続では第03回のスキーマを使用する
});

// 接続文字列を使わずに接続設定を個別に指定する場合
// const client = new Client({
//   host: "localhost",
//   user: "student",
//   password: "secret123",
//   database: "playground",
//   port: 5432,
//   options: "-c search_path=w03",
// });

await client.connect();

const r = await client.query("SELECT * FROM users;");
console.log(r.rows);

await client.end();
