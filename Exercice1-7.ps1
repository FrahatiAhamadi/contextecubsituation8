 ##frahati AHAMADI
 ##20/03/2024
 
 
 # Function to get and export information about running services
function Export-RunningServices {
    # Get running services
    $RunningServices = Get-Service | Where-Object { $_.Status -eq 'Running' }

    # Export running services to CSV file
    $RunningServices | Export-Csv -Path "C:\git_cub\contextecubsituation8\services.csv" -NoTypeInformation
}

# Call the function to export running services
Export-RunningServices
