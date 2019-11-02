configuration Testfile {
    # One can evaluate expressions to get the node list
    # E.g: $AllNodes.Where("Role -eq Web").NodeName
    node ("localhost")
    {

        File TheDarrell
        {
            Ensure = "Present"
            Type = "Directory"
            DestinationPath = "C:\temp"
       
        }
    }
}

Testfile