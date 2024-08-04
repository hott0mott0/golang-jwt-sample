table "schema_migrations" {
  schema = schema.public
  column "version" {
    null = false
    type = bigint
  }
  column "dirty" {
    null = false
    type = boolean
  }
  primary_key {
    columns = [column.version]
  }
}
table "users" {
  schema = schema.public
  column "id" {
    null = false
    type = text
  }
  column "username" {
    null = false
    type = character_varying
  }
  column "email" {
    null = false
    type = character_varying
  }
  column "password" {
    null = false
    type = character_varying
  }
  primary_key {
    columns = [column.id]
  }
  unique "users_email_key" {
    columns = [column.email]
  }
}
schema "public" {
  comment = "standard public schema"
}
