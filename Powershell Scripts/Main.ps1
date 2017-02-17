$Confirmation = Read-Host "Are you sure you want to proceed: "
if ($Confirmation -eq 'y')
{ 
{
    echo 'hello my name is yellow'
    
}
$confirmation = Read-Host "Do you want to create a new user or put a pst on hold? [New/Hold]"
if ($Confirmation -eq 'new')
{
$DisplayName = Read-Host -Prompt 'Input the DisplayName'
$FirstName = Read-Host -Prompt 'Input the FirstName'
$LastName = Read-Host -Prompt 'Input the LastName'
$UserPrincipalName = Read-Host 'Input the Email'
$Password = Read-Host -Prompt 'Input password'


#New-MsolUser -DisplayName $DisplayName -FirstName $FirstName -LastName $LastName -UserPrincipalName $UserPrincipalName -UsageLocation US -LicenseAssignment Blucora:ENTERPRISEE3 [-Password $password]
Write-Host "The DisplayName is '$DisplayName' The first name is '$Firstname' The LastName is '$LastName' The email will be '$UserPrincipleName' and the password is '$password'"
}
if ($Confirmation -eq 'hold')
{
echo 'I will hold'
}
}