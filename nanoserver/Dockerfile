FROM  mcr.microsoft.com/powershell:lts-nanoserver-1903

RUN mkdir kit
COPY ["endless.ps1", "/kit"]
COPY ["download.ps1", "/kit"]

WORKDIR /kit
RUN ["C:/Program Files/PowerShell/pwsh.exe", "download.ps1"]

RUN openfire_4_6_0_bundledJRE_x64.exe -s -q -overwrite /InstallAllUsers=1 /PrependPath=1 /ACTION=INSTALL /IACCEPTTHEAGREEMENT /YES /JRE=YES

RUN ["/Program Files/openfire/bin/openfire-service","/stop"]
COPY ["../openfire.xml", "/Program Files/openfire/conf"]
RUN ["/Program Files/openfire/bin/openfire-service", "/start"]

ENTRYPOINT ["C:/Program Files/PowerShell/pwsh.exe", "/kit/endless.ps1"]
