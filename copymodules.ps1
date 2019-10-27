$ipofnode = "192.168.1.248"
#$localadmin = Get-Credential  
$modulenames = 'ActiveDirectoryDSC','PSDSCResources'

$modulepath = 'C:\Program Files\WindowsPowerShell\Modules'
$destination = '\\' + "$ipofnode" + '\c$\' + ($modulepath).substring(3)
$modulenames | ForEach-Object { Copy-Item ("$modulepath" + '\' + $_)  ("$destination" + '\' + $_) -Recurse     }

