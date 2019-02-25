$ErrorActionPreference = 'Stop'

$version      = '1.6.3'
$name         = "$env:ChocolateyPackageName-$version"
$url          = "http://archive.apache.org/dist/flink/flink-1.6.3/flink-1.6.3-bin-scala_2.11.tgz"

$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageDir   = "$(Split-Path -parent $toolsDir)"
$flinkHome    = "$(Join-Path $packageDir $name)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '6C75BEA476E80247EE2ED0A99074AFA322A39737CB05E60F88EB8BB8EE24BF4F'
  checksumType  = 'sha256'
}

# Un-Gzip
Install-ChocolateyZipPackage @packageArgs

# Untar (tar has root directory flink-x.y.z so ends up being package/flink-x.y.z when extracted to $packageDir)
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath "$(Join-Path $toolsDir $tarFile)" -destination $packageDir

# Make environment usable
Install-ChocolateyEnvironmentVariable 'FLINK_CONF_DIR' "$(Join-Path $flinkHome 'conf')"
Install-ChocolateyEnvironmentVariable 'FLINK_HOME' $flinkHome

Install-BinFile -Name 'flink' -Path "$(Join-Path $flinkHome 'bin/flink.bat')"
Install-BinFile -Name 'pyflink' -Path "$(Join-Path $flinkHome 'bin/pyflink.bat')" # but note there are no guarantees that Python is installed!

Update-SessionEnvironment