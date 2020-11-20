$url = "https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4_6_0_bundledJRE_x64.exe"
$output = "openfire_4_6_0_bundledJRE_x64.exe"
$start_time = Get-Date

Invoke-WebRequest -Uri $url -OutFile $output

# (New-Object System.Net.WebClient).DownloadFile($url, $output)

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
