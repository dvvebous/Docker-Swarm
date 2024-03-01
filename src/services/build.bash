# #!/bin/bash
# cd booking-service/
# mvn -N io.takari:maven:wrapper 
# mvn package -DskipTests
# cd ..
# cd gateway-service/
# mvn -B package -DskipTests
# cd ..
# cd hotel-service/
# mvn -B package -DskipTests
# cd ..
# cd loyalty-service/
# mvn -B package -DskipTests
# cd ..
# cd payment-service/
# mvn -B package -DskipTests
# cd ..
# cd report-service/
# mvn -B package -DskipTests
# cd ..
# cd session-service/
# mvn -B package -DskipTests
# cd ..
cd database
docker build -t aemmazub/database .
cd ..
cd booking-service
docker build -t aemmazub/booking .
cd ..
cd gateway-service
docker build -t aemmazub/gateway .
cd ..
cd hotel-service
docker build -t aemmazub/hotel .
cd ..
cd loyalty-service
docker build -t aemmazub/loyalty .
cd ..
cd payment-service
docker build -t aemmazub/payment .
cd ..
cd report-service
docker build -t aemmazub/report .
cd ..
cd session-service
cd ..
cd nginx_proxy
docker build -t aemmazub/myproxy .

docker push aemmazub/database
docker push aemmazub/booking
docker push aemmazub/gateway 
docker push aemmazub/hotel 
docker push aemmazub/loyalty 
docker push aemmazub/payment 
docker push aemmazub/report 
docker push aemmazub/session
docker push aemmazub/myproxy