$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url       = "https://github.com/dmbaturin/soupault/releases/download/$($env:ChocolateyPackageVersion)/soupault-$($env:ChocolateyPackageVersion)-win64.zip"

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  SpecificFolder = "soupault-$($env:ChocolateyPackageVersion)-win64"
  url64bit       = $url
  checksum     = 'c0210b6f6b379f954bf221a82f85ea545a507c32f21de74c8868cc97879da8b2'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs