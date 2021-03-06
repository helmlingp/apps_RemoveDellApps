<#
  File: RemoveDellApps.ps1
  Author: helmlingp@vmware.com
  Modified by Phil Helmling: 5 February 2020

  # Remove Dell default apps
  # Don't remove all Dell apps as need Dell Command Monitor
#>
#==========================Header=============================#

$current_path = $PSScriptRoot;
if($PSScriptRoot -eq ""){
    $current_path = "C:\Temp";
}

# Remove Dell default apps
Get-AppXPackage *office* -allUsers | Remove-AppXPackage –allUsers
#Get-AppXPackage *dell* -allUsers | Remove-AppXPackage –allUsers
Get-AppXPackage DellInc.DellDigitalDelivery -allUsers | Remove-AppXPackage –allUsers
Get-AppXPackage DellInc.DellSupportAssistforPCs -allUsers | Remove-AppXPackage –allUsers
Get-AppXPackage *skypeapp* -allUsers | Remove-AppXPackage –allUsers
Get-AppXPackage *windowscommunicationsapps* -allUsers | Remove-AppXPackage –allUsers
