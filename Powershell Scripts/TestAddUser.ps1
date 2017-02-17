$DisplayName = Read-Host -Prompt 'Input the DisplayName'
$FirstName = Read-Host -Prompt 'Input the FirstName'
$LastName = Read-Host -Prompt 'Input the LastName'
$UserPrincipalName = Read-Host $FirstName'.'$lastname'@blucora.com'
$Password = Read-Host -Prompt 'Input password'


New-MsolUser -DisplayName $DisplayName -FirstName $FirstName -LastName $LastName -UserPrincipalName $UserPrincipalName -UsageLocation US -LicenseAssignment Blucora:ENTERPRISEE3 [-Password $password]
