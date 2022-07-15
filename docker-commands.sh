docker-compose up -d --build

docker-compose up -d

http://127.0.0.1:44000

docker exec -it webp_server_1 bash

docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application/ && ls -al"

docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application/ && cwebp image.png -o image.webp"

docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application && ls -al"
docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application && chmod +x apps.sh"
docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application && chmod +x ./apps.sh && ./apps.sh"


docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application && npm install sharp"

docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application && node ss.js"
docker exec -it webp_server_1 bash -c ". ~/.bashrc && cd /var/www/application && node tt.js"
