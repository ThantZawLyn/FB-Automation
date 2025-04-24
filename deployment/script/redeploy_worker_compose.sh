cd ../worker
docker login
docker build -t rannovr/fb_worker:compose .
docker push rannovr/fb_worker:compose
