$DisplayName = Read-Host -Prompt 'Input the DisplayName'
$FirstName = Read-Host -Prompt 'Input the FirstName'
$LastName = Read-Host -Prompt 'Input the LastName'
$UserPrincipalName = Read-Host 'Input firstname.lastname'
$Password = Read-Host -Prompt 'Input password'


#New-MsolUser -DisplayName $DisplayName -FirstName $FirstName -LastName $LastName -UserPrincipalName $UserPrincipalName -UsageLocation US -LicenseAssignment Blucora:ENTERPRISEE3 [-Password $password]
Write-Host "The DisplayName is '$DisplayName' The first name is '$Firstname' The LastName is '$LastName' The email will be $UserPrincipalName@Blucora.com and the password is '$password'"