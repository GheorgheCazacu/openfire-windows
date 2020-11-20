FROM mcr.microsoft.com/windows/servercore:ltsc2019

RUN mkdir kit
COPY openfire_4_6_0_bundledJRE_x64.exe /kit
COPY endless.ps1 /kit


WORKDIR /kit
RUN openfire_4_6_0_bundledJRE_x64.exe -s -q -overwrite /InstallAllUsers=1 /PrependPath=1 /ACTION=INSTALL /IACCEPTTHEAGREEMENT /YES /JRE=YES

RUN ["/Program Files/openfire/bin/openfire-service","/stop"]
COPY ["openfire.xml", "/Program Files/openfire/conf"]
RUN ["/Program Files/openfire/bin/openfire-service", "/start"]

ENTRYPOINT ["powershell.exe", "/kit/endless.ps1"]
