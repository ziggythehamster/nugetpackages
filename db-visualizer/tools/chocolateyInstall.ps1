$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.dbvis.com/product_download/dbvis-10.0.16/media/dbvis_windows_10_0_16.exe'
$url64      = 'https://www.dbvis.com/product_download/dbvis-10.0.16/media/dbvis_windows-x64_10_0_16.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'DbVisualizer*'

  checksum      = '312796B097026D48E27B85ABCBC5C1F3002195086823E7100513084E392F3074'
  checksumType  = 'sha256'
  checksum64    = 'D1DD43136B11F0D773835D5E68CCF854D1A2EECB5418CA122EE904ADEA1D61EA'
  checksumType64= 'sha256'

  silentArgs    = "-q"

  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs