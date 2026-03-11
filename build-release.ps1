# Yıldız Rehberi - Release AAB Build Script
# Java "supplied javaHome invalid" hatasını önlemek için Flutter JDK kullanılır

$ErrorActionPreference = "Stop"
$ProjectRoot = $PSScriptRoot

# Flutter'dan JDK yolunu al
$flutterConfig = flutter config --list 2>$null
$jdkDir = ($flutterConfig | Select-String "jdk-dir:\s*(.+)" | ForEach-Object { $_.Matches.Groups[1].Value.Trim() })

if ($jdkDir -and (Test-Path "$jdkDir\bin\java.exe")) {
    $env:JAVA_HOME = $jdkDir
    Write-Host "JAVA_HOME ayarlandi: $jdkDir" -ForegroundColor Green
} else {
    Write-Host "UYARI: Flutter JDK bulunamadi. JAVA_HOME sistemde ayarli olmali." -ForegroundColor Yellow
}

Set-Location $ProjectRoot
flutter clean
flutter pub get
flutter build appbundle --release

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nBuild basarili! AAB: build\app\outputs\bundle\release\app-release.aab" -ForegroundColor Green
}
