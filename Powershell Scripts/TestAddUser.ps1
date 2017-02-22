
  $UserCredential = Get-Credential
    $Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/  -Credential $UserCredential -Authentication Basic -AllowRedirection
    Connect-MsolService -Credential $UserCredential

$DisplayName = Read-Host -Prompt 'Input the DisplayName'
$FirstName = Read-Host -Prompt 'Input the FirstName'
$LastName = Read-Host -Prompt 'Input the LastName'
$UserPrincipalName = Read-Host 'Input firstname.lastname'
$Password = Read-Host -Prompt 'Input password'


#New-MsolUser -DisplayName Test User -FirstName Test -LastName User -UserPrincipalName Test.user55@blucora.com -UsageLocation US -LicenseAssignment Blucora:ENTERPRISEPACK [-Password $password]
New-MsolUser -DisplayName $DisplayName -FirstName $FirstName -LastName $LastName -UserPrincipalName $UserPrincipalName -UsageLocation US -LicenseAssignment Bcor:ENTERPRISEPACK