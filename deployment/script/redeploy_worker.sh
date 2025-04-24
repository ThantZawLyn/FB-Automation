cd ../worker
docker login
docker build -t rannovr/fb_worker .
docker push rannovr/fb_worker
