# Verbindung mit Teams Connector herstellen
Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

# Voice Route entfernen
Remove-CsOnlineVoiceRoute -Identity “sipcall”

# PstnUsage entfernen
Set-CsOnlinePstnUsage -Identity Global -Usage @{Remove=“sipcall”}