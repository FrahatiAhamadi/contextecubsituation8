##Exercice1-5
#Frahati AHAMADI
#13/03/2024

#Ecrire une fonction permettant d'afficher le processus désirer par un utilisateur

function InfoProcessus($processusName)
{
$Processus = Get-Process | Where-Object {$_.ProcessName -eq "$ProcessusName"} 
$Processus | Format-Table Id, Name, Description
}
$ProcessusName = Read-Host "quel processus désirez vous afficher"

InfoProcessus($ProcessusName)