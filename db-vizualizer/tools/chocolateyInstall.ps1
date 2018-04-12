$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.dbvis.com/product_download/dbvis-10.0.10/media/dbvis_windows_10_0_10.exe'
$url64      = 'https://www.dbvis.com/product_download/dbvis-10.0.10/media/dbvis_windows-x64_10_0_10.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'DbVisualizer*'

  checksum      = '84D09D062552A6A1B59427E77F16D7C2EFCAA59A695D25704066D55AE3222846'
  checksumType  = 'sha256'
  checksum64    = '193281F8AD3F07B58EF748EAD04F11D198751E262C7325C0333B793A25738F2B'
  checksumType64= 'sha256'

  silentArgs    = "-q"

  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs