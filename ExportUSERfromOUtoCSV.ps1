﻿$OUpath = 'OU=Disabled accounts,OU=xxx,DC=xxx,DC=CZ'
$ExportPath = 'C:\Export_OU_user.csv'
Get-ADUser -Filter * -SearchBase $OUpath |
Select-object SamAccountName,Name,UserPrincipalName | Export-Csv -NoTypeInformation -Encoding UTF8 -Delimiter ";" $ExportPath
