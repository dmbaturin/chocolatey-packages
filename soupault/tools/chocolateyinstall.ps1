$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url       = "https://github.com/dmbaturin/soupault/releases/download/$($env:ChocolateyPackageVersion)/soupault-$($env:ChocolateyPackageVersion)-win64.zip"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  SpecificFolder = "soupault-$($env:ChocolateyPackageVersion)-win64"
  url64bit       = $url
  checksum     = 'eaea079ff30d9c909748d57a6efedcad89441d3e1aefddbccc6192889e5bd3f0'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs