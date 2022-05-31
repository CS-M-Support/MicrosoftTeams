# Verbindung mit MicrosoftTeams herstellen
Connect-MicrosoftTeams

# Aktivieren der Domäne für die Verwendung von Telefonie (Bei sipcall der User "domainactivation")
Set-CsUser -identity “[UserPrincipalName]” -EnterpriseVoiceEnabled $true

# Prüfen ob der User bereits für Teams registriert ist (es muss eine Ausgabe wie z.B. «RegistrarPool: sippool123456.infra.lync.com» erscheinen):
Get-CsOnlineUser -Identity “[UserPrincipalName]]” | fl RegistrarPool

# Jetzt kann gemäss dem PowerShell Script "Bind User with Phonenumber" weitergefahren werden

# PstnUsage erstellen
Set-CsOnlinePstnUsage -Identity Global -Usage @{Add=“sipcall”}

# Online-Route erstellen. Gemäss sipcall 10 Minuten warten für den nächsten Schritt
New-CsOnlineVoiceRoute -Identity “sipcall” -NumberPattern “.*” -OnlinePstnGatewayList “[sipcall-Domain]” -Priority 1 -OnlinePstnUsages “sipcall”

# VoIP-Route erstellen und auch hier wieder 10 Minuten warten
New-CsOnlineVoiceRoutingPolicy “sipcall” -OnlinePstnUsages “sipcall”

# Dem User die Berechtigung für die Richtlinie erteilen
Grant-CsOnlineVoiceRoutingPolicy -Identity “[UserPrincipalName]” -PolicyName “sipcall”

# Verbindung mit MicrosoftTeams trennen
Disconnect-MicrosoftTeams