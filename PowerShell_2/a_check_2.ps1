# Requires -RunAsAdministrator
# Get the Hyper-V feature and store it in $hyperv
# new comment;
$hyperv = Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All

# Check if Hyper-V is already enabled.
if($hyperv.State -eq "Enabled") {
    Write-Host "Hyper-V is already enabled."
} else {
    Write-Host "Hyper-V is disabled."
}