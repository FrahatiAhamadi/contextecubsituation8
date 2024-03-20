function InfoProcessus ($ProcessusName)
{
   
    Write-Host "affichage des processus contenant: $ProcessusName"
    
    
    $Processus = Get-Process | Where-Object {$_.ProcessName -like "$ProcessusName"} 
    $Processus | Format-Table Id, Name, Description

    # Export process information to a text file
   # $Processus | Export-Csv -Path "$ProcessusName.csv" -NoTypeInformation -Append

    # Export process information to a CSV file
    $Processus | Out-File C:\git_cub\contextecubsituation8\sauvegarde.txt
    $Processus | Out-File C:\git_cub\contextecubsituation8\sauvegarde.csv
    $Processus | Export-Csv -Path "sauvegarde.csv" -NoTypeInformation

}

$ProcessusName = Read-Host "Quel processus désirez-vous afficher ?"
InfoProcessus($ProcessusName)