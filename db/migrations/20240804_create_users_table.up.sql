CREATE TABLE IF NOT EXISTS "users" (
  "id" text NOT NULL PRIMARY KEY,
  "username" varchar NOT NULL,
  "email" varchar NOT NULL UNIQUE,
  "password" varchar NOT NULL
)
