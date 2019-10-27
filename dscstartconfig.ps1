$ipofnode = "192.168.1.248"
$credlocal = Get-Credential

<#
$cimSessionOption = New-CimSessionOption  -SkipCACheck -SkipCNCheck
$cimSession = New-CimSession -SessionOption $cimSessionOption -ComputerName $ipofnode  -Credential $credlocal -Verbose 
 #>

#Set-Item WSMan:\localhost\Client\TrustedHosts -Value 192.168.1.248

Start-DscConfiguration -Path .\ADDomain_NewForest_Config -ComputerName $ipofnode -Wait -force -Credential $localadmin -VERBOSE

