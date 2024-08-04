.PHONY: schema-update
schema-update:
	atlas schema inspect -u 'postgresql://root:password@localhost:5432/user?sslmode=disable'  > ./db/schema/schema.tf
