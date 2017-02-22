$Confirmation = Read-Host "Do you want to connect to O365?  "
if ($Confirmation -eq 'y')
{ 
 
    
    $UserCredential = Get-Credential
    $Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/  -Credential $UserCredential -Authentication Basic -AllowRedirection
    Connect-MsolService -Credential $UserCredential
    
 

$confirmation = Read-Host "Do you want to create a new user or remove a user? [New/Remove]"
    if ($Confirmation -eq 'new')
  {
    $DisplayName = Read-Host -Prompt 'Input the DisplayName'
    $FirstName = Read-Host -Prompt 'Input the FirstName'
    $LastName = Read-Host -Prompt 'Input the LastName'
    $UserPrincipalName = Read-Host 'Input Firstname.LastName@Blucora.com'



     Write-Host "The DisplayName is $DisplayName The first name is $Firstname The LastName is $LastName The email will be $UserPrincipalName and the password is $password"

    $Confirmation = Read-Host "Should I create a new account with the provided Credentials? [Y/N]"
        if ($Confirmation -eq 'y')
            {
                echo 'New account will be created...'
                New-MsolUser -DisplayName $DisplayName -FirstName $FirstName -LastName $LastName -UserPrincipalName $UserPrincipalName -UsageLocation US -LicenseAssignment "Bcor:ENTERPRISEPACK"
            }
        if ($Confirmation -eq 'n')
            {
                echo 'New account will not be created, Disconnected from Office 365'
                Remove-PSSession $Session
            }
  }
    if ($Confirmation -eq 'Remove')
 {
    echo 'I will hold'
 }
}