Install-ChocolateyZipPackage 'gradle' 'http://services.gradle.org/distributions/gradle-1.6-bin.zip' "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#------- ADDITIONAL SETUP -------#
$chocolateyToolPath = Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) '\gradle-1.6\bin\'
Install-ChocolateyPath $chocolateyToolPath 'user'