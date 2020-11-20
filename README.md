# openfire-windows

Build image

docker build --tag openfire-windows-4.6.0:0.0.1 .

run the image

docker run -d --memory 2048m --cpus 1 -p9090:9090 -p9091:9091 -p5269:5269 -p5222:5222 -p7443:7443 openfire-windows-4.6.0:0.0.1
