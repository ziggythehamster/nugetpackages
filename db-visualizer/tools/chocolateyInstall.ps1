$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.dbvis.com/product_download/dbvis-10.0.25/media/dbvis_windows-x32_10_0_25.exe'
$url64      = 'https://www.dbvis.com/product_download/dbvis-10.0.25/media/dbvis_windows-x64_10_0_25.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'DbVisualizer*'

  checksum      = 'FCB806D385AE1E89533EC0848996DF436CA4D691BB22BAC46FDDB9BBA8D6EFC8'
  checksumType  = 'sha256'
  checksum64    = 'A7F50B0C8958D0765CEF88B59147842B42C4A42EEEC76D3CF114DA07309C04CD'
  checksumType64= 'sha256'

  silentArgs    = "-q"

  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
