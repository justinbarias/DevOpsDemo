# Install IIS (with Management Console)
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Install ASP.NET 4.6
Install-WindowsFeature Web-Asp-Net45

# Install Web Management Service
Install-WindowsFeature -Name Web-Mgmt-Service

# Configure Windows Firewall
netsh advfirewall firewall add rule name="http" dir=in action=allow protocol=TCP localport=80

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

choco install dotnet4.7.1 -y