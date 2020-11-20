docker build --tag openfire-windows-4.6.0:0.0.1 .

docker run -it --memory 4096m --cpus 1 -p9090:9090 -p9091:9091 -p5269:5269 -p5222:5222 -p7443:7443 --name openfire-windows-configured openfire-windows:4.6.0 powershell.exe


Get-Service -DisplayName '*Open*' | findstr 'Running'


docker commit openfire-windows-configured openfire-windows-configured:1.0.0


docker run -it --memory 2048m --cpus 1 -p9090:9090 -p9091:9091 -p5269:5269 -p5222:5222 -p7443:7443 openfire-windows-configured:1.0.0 powershell.exe

docker run -it --memory 2048m --cpus 1 -p9090:9090 -p9091:9091 -p5269:5269 -p5222:5222 -p7443:7443 openfire-windows-4.6.0:0.0.1 powershell.exe


docker build --tag openfire-windows-4.6.0:0.0.1 .

REM run the openfire image 
docker run -d --memory 2048m --cpus 1 -p9090:9090 -p9091:9091 -p5269:5269 -p5222:5222 -p7443:7443 openfire-windows-4.6.0:0.0.1

cd nanoserver

(New-Object System.Net.WebClient).DownloadFile("https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4_6_0_bundledJRE_x64.exe", ".")

docker build -f ./nanoserver/Dockerfile --tag openfire-windows-4.6.0:0.0.2 .
docker run -d --memory 2048m --cpus 1 -p9090:9090 -p9091:9091 -p5269:5269 -p5222:5222 -p7443:7443 openfire-windows-4.6.0:0.0.2
