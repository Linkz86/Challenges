$allServices = Get-Service
$stoppedServices = Get-Service | Where {$_.Status -eq "Stopped"}
$autoStartButStoppedServices = $StoppedServices | Where {$_.StartType -eq "Automatic"}
Write-Host -ForegroundColor Cyan "Out of $($allServices.count) services $($stoppedServices.Count) are stopped and $($autoStartButStoppedServices.Count) are stopped but have a start type of Automatic"

 