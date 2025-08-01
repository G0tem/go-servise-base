DO
$do$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'local_db'
   ) THEN
      CREATE DATABASE local_db;
   END IF;
END
$do$; 