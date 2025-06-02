$Toolkit_Download_Url="https://github.com/LinXP/pb_compiller/releases/download/6.20/purebasic_compiller_windows_x64.zip"
$Toolkit_Download_Path="$env:TEMP\purebasic_compiller.zip"
$Toolkit_Path="$env:APPDATA\purebasic_compiller"

Invoke-WebRequest -URI $Toolkit_Download_Url -OutFile $Toolkit_Download_Path
Expand-Archive -Path $Toolkit_Download_Path -DestinationPath $Toolkit_Path -Force
Remove-Item -Path $Toolkit_Download_Path -Force
Write-Output "PUREBASIC_HOME=$env:APPDATA\purebasic_compiller\PureBasic" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append
