# Verbindung mit Microsoft Teams herstellen
Connect-MicrosoftTeams

# Voice Route entfernen
Remove-CsOnlineVoiceRoute -Identity “sipcall”

# PstnUsage entfernen
Set-CsOnlinePstnUsage -Identity Global -Usage @{Remove=“sipcall”}

# Verbindung mit Microsoft Teams trennen
Disconnect-MicrosoftTeams