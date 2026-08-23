$loadEnv = '"%USERPROFILE%\load_dev_env.bat"'
$regPath = "HKCU:\Software\Microsoft\Command Processor"
$existing = (Get-ItemProperty -Path $regPath -Name AutoRun -ErrorAction SilentlyContinue).AutoRun

# Reuse the existing clink injection command from the registry, if one is already set
$clinkCmd = ($existing -split '&' | ForEach-Object { $_.Trim() } | Where-Object { $_ -match 'clink\.bat' }) -join ' & '

$newValue = if ($clinkCmd) { "$clinkCmd & $loadEnv" } else { $loadEnv }

if ($existing -eq $newValue) {
    Write-Host "AutoRun is already configured correctly. No changes made."
} else {
    if ($existing) {
        Write-Host "Existing AutoRun value:`n  $existing"
    }
    Set-ItemProperty -Path $regPath -Name "AutoRun" -Value $newValue
    Write-Host "AutoRun updated."
}
