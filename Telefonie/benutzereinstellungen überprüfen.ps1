# Verbindung mit Microsoft Teams herstellen
Connect-MicrosoftTeams

# Userinformationen erhalten
Get-CsOnlineUser -Identity “[UserPrincipalName]” | Format-List -Property FirstName, LastName, EnterpriseVoiceEnabled, HostedVoiceMail, LineURI, UsageLocation, UserPrincipalName, WindowsEmailAddress, SipAddress, OnPremLineURI, OnlineVoiceRoutingPolicy

# Verbindung mit Microsoft Teams trennen
Disconnect-MicrosoftTeams