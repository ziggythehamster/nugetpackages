Install-ChocolateyZipPackage 'php54' 'http://windows.php.net/downloads/releases/php-5.4.15-Win32-VC9-x86.zip' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#------- ADDITIONAL SETUP -------#
$chocolateyToolPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
#$phpPath = Join-Path $chocolateyToolPath 'php\bin'
#Install-ChocolateyPath $phpPath 'user'

Install-ChocolateyPath $chocolateyToolPath 'user'