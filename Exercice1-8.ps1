 ##frahati AHAMADI
 ##20/03/2024
 
# Function to get and export information about services based on status
function Export-Services {
    param (
        [string]$Status
    )

    # Get services based on the specified status
    $Services = Get-Service | Where-Object { $_.Status -eq $Status }

    # Export services to CSV file
    $Services | Export-Csv -Path "C:\git_cub\contextecubsituation8\services_$Status.csv" -NoTypeInformation
}

# Ask the user for the desired status of services
$StatusChoice = Read-Host "Quel état de services souhaitez-vous afficher ? (Démarré/Arrêté)"

# Check if the user input matches the expected values
if ($StatusChoice -eq "Démarré" -or $StatusChoice -eq "Demarré" -or $StatusChoice -eq "Started") {
    Export-Services -Status "Running"
}
elseif ($StatusChoice -eq "Arrêté" -or $StatusChoice -eq "Arrete" -or $StatusChoice -eq "Stopped") {
    Export-Services -Status "Stopped"
}
else {
    Write-Host "Choix invalide. Veuillez spécifier 'Démarré' ou 'Arrêté'."
}
