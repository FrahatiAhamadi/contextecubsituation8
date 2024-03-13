#Scripting powershell.ps1
#FRAHATI AHAMADI
#Exercice 1-2
#13/03/2024

#Commande listant l'ensemble des processus en cours sur le serveur

#On va lister les numéros d'identifiants et les noms les processus
Get-Process | Where-Object {$_.ProcessName -eq "svchost"} | Format-Table -AutoSize