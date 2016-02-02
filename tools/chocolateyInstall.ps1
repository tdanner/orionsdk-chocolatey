$packageName = 'OrionSDK' # arbitrary name for the package, used in messages
$installerType = 'msi' #only one of these: exe, msi, msu
$url = 'https://github.com/solarwinds/OrionSDK/releases/download/v2.0.50/OrionSDK.msi' # download url
$silentArgs = '/quiet' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\OrionSDK.msi" -validExitCodes $validExitCodes
