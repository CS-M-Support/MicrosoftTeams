# Verbindung mit MicrosoftTeams herstellen
Connect-MicrosoftTeams

# Verknüpfung mit Ressource aufheben
Set-CsOnlineApplicationInstance -Identity [UserPrincipalName] -OnpremPhoneNumber $null

# Verknüpfung mit Usern aufheben
Set-CsUser -identity “[UserPrincipalName]” -EnterpriseVoiceEnabled $false -HostedVoicemail $false -OnPremlineURI $null

# Verbindung mit MicrosoftTeams trennen
Disconnect-MicrosoftTeams