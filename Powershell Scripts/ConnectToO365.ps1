$confirmation = Read-Host "Ready? [y/n]"
while($confirmation -ne "n")
{
    if ($confirmation -eq 'y')
    {
        {
         $UserCredential = Get-Credential
         $Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

         Import-PSSession $Session
        }
        $confirmation = Read-Host "Do you want to create a new user or put a pst on hold? [New/Hold]"
        if ($confirmation -eq 'new')
        {
            $User = Read-Host -Prompt 'Input the Username'
        }
        if ($confirmation -eq 'hold')
        {
            
        }
    }
    $confirmation = Read-Host "Ready? [y/n]"
}

