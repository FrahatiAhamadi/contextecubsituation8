#Exercice1-3
#Frahati AHAMADI

# Afficher les processus de "svchost" en cours d'execution

$Processus = Get-Process | Where-Object {$_.ProcessName -eq "svchost"} 
$Processus | Format-Table Id, Name, Description