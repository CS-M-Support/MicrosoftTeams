# Verbindung mit MicrosoftTeams herstellen
Connect-MicrosoftTeams

# Userinformationen erhalten
Get-CsOnlineUser -Identity “[UserPrincipalName]” | Format-List -Property FirstName, LastName, EnterpriseVoiceEnabled, HostedVoiceMail, LineURI, UsageLocation, UserPrincipalName, WindowsEmailAddress, SipAddress, OnPremLineURI, OnlineVoiceRoutingPolicy

# Verbindung mit MicrosoftTeams trennen
Disconnect-MicrosoftTeams