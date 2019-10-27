$cd = @{
    AllNodes = @(
        @{
            NodeName="192.168.1.248"
            PSDscAllowPlainTextPassword=$true
        }
    )
}
 


ADDomain_NewForest_Config -SafeModePassword $credential -Credential $credential -ConfigurationData $cd
