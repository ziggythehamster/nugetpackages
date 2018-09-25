$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.dbvis.com/product_download/dbvis-10.0.14/media/dbvis_windows_10_0_14.exe'
$url64      = 'https://www.dbvis.com/product_download/dbvis-10.0.14/media/dbvis_windows-x64_10_0_14.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'DbVisualizer*'

  checksum      = '10CCDA6AE6586A7734DBA989FCEE6ADAFADF055F96A679ABCB78300CB4037DD8'
  checksumType  = 'sha256'
  checksum64    = '80B2A5518242F4ABCA073A3FC0CA8DB5A514B51E7CC79B076A94BE9C5771E1C2'
  checksumType64= 'sha256'

  silentArgs    = "-q"

  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs