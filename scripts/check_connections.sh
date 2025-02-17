# Probando PostgreSQL
# pg_isready -h localhost -p 5432
echo "Testing PostgreSQL..."
docker exec -it lab_2-postgres-1 pg_isready -h localhost -p 5432

# Probando MongoDB
#echo 'db.runCommand({ping:1})' | mongosh --host localhost:27017
echo "Testing MongoDB..."
docker exec -it lab_2-mongodb-1 mongosh --host localhost:27017 --eval 'db.runCommand({ping:1})'

# Probando Redis
# redis-cli -h localhost ping
echo "Testing Redis..."
docker exec -it lab_2-redis-1 redis-cli -h localhost ping
