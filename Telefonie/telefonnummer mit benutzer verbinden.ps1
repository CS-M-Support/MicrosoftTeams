# Verbindung mit MicrosoftTeams herstellen
Connect-MicrosoftTeams

# Telefonnummer mit Ressource verknüpfen
Set-CsOnlineApplicationInstance -Identity [UserPrincipalName] -OnpremPhoneNumber +41xxxxxxxxx

# Telefonnummer mit User verknüpfen
Set-CsUser -identity “[UserPrincipalName]” -EnterpriseVoiceEnabled $true -HostedVoicemail $true -OnPremlineURI tel:+41xxxxxxxxx

# Richtlinie auf Teams Only setzen
Grant-CsTeamsUpgradePolicy -Identity [UserPrincipalName] -PolicyName UpgradeToTeams

# Verbindung mit MicrosoftTeams trennen
Disconnect-MicrosoftTeams