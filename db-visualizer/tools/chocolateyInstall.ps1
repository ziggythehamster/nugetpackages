$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.dbvis.com/product_download/dbvis-10.0.17/media/dbvis_windows_10_0_17.exe'
$url64      = 'https://www.dbvis.com/product_download/dbvis-10.0.17/media/dbvis_windows-x64_10_0_17.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'DbVisualizer*'

  checksum      = 'D213692DA3D7D17C8469A4C7CD0F6B4FA0C5A3AF01081C89D1A115ECAF202B8B'
  checksumType  = 'sha256'
  checksum64    = 'C2FA038DBD8B376D51565843EFC60BBDCE20378E72AB3E65F20E5A06FA60425C'
  checksumType64= 'sha256'

  silentArgs    = "-q"

  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs