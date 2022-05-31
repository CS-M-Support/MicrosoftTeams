# Verbindung mit MicrosoftTeams herstellen
Connect-MicrosoftTeams

# Voice Route entfernen
Remove-CsOnlineVoiceRoute -Identity “sipcall”

# PstnUsage entfernen
Set-CsOnlinePstnUsage -Identity Global -Usage @{Remove=“sipcall”}

# Verbindung mit MicrosoftTeams trennen
Disconnect-MicrosoftTeams