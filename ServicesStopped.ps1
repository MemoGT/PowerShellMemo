#Ejercicio Using powerShell to report stopped services

get-service |   # Lista todos los servicios
Where-Object Status -eq 'Stopped' |  # donde el status del objeto sea detenido.
Select-Object Name, Status  # Seleccionar solo el nombre y status

#SE PUEDE METER TODO EN UNA VARIABLE Y SOLO LLAMAR A LA VARIABLE

$services = Get-Service | Where-Object status -eq 'running' | Select-Object name, Status  # Mete en una variable todo el comando
$services | Out-File C:\Users\A462138\Documents\PowerShellMemo\PowerShellMemo\services.csv  # Mete el resultado de la variable en un archivo de excel .csv
notepad .\services.csv  # Abre el contenido del archivo en notepad

$services | Export-Csv .\services2.csv # Exporta el contenido de la variable a un archivo csv
get-content .\services2.csv | more # Abre el contenido del archivo en consola, esto solo para que se mire mas entendible

