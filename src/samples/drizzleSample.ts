// sql/03/init-users.sql が実行されていることを前提としています

import { db } from "@/libs/drizzle";
import { pgSchema, text, integer } from "drizzle-orm/pg-core";

const w03 = pgSchema("w03");

const usersTable = w03.table("users", {
  id: integer("id").primaryKey(),
  name: text("name").notNull(),
  age: integer("age"),
});

const users = await db.select().from(usersTable);
console.log(users);
