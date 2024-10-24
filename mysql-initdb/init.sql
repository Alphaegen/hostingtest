-- Create database and user for test.nl
CREATE DATABASE IF NOT EXISTS test_db;
CREATE USER IF NOT EXISTS 'test_user'@'%' IDENTIFIED BY 'test_password';
GRANT ALL PRIVILEGES ON test_db.* TO 'test_user'@'%';
FLUSH PRIVILEGES;

-- Create database and user for harold.nl
CREATE DATABASE IF NOT EXISTS harold_db;
CREATE USER IF NOT EXISTS 'harold_user'@'%' IDENTIFIED BY 'harold_password';
GRANT ALL PRIVILEGES ON harold_db.* TO 'harold_user'@'%';
FLUSH PRIVILEGES;

-- Create database and user for best.nl
CREATE DATABASE IF NOT EXISTS best_db;
CREATE USER IF NOT EXISTS 'best_user'@'%' IDENTIFIED BY 'best_password';
GRANT ALL PRIVILEGES ON best_db.* TO 'best_user'@'%';
FLUSH PRIVILEGES;

