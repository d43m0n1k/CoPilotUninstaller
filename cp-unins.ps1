try {
    Get-AppxPackage -AllUsers | Where-Object {$_.Name -Like '*Microsoft.Copilot*'} | Remove-AppxPackage -AllUsers -ErrorAction Stop -ErrorVariable errVar
    Write-Host "Uninstallation succeeded."
} catch {
    Write-Host "Uninstallation failed: $($errVar.Exception.Message)"
    Write-Debug $errVar
}
