#Exercice1-4
#Frahati AHAMADI
#13/03/2024
$ProcessusName = Read-Host "quel processus désirez vous afficher"

$Processus = Get-Process | Where-Object {$_.ProcessName -like "$ProcessusName"} 
$Processus | Format-Table Id, Name, Description