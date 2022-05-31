# Verbindung mit MicrosoftTeams herstellen
Connect-MicrosoftTeams

# Anpassung der Upgrade Policy
Grant-CsTeamsUpgradePolicy -PolicyName UpgradeToTeams -Global

# Verbindung mit MicrosoftTeams trennen
Disconnect-MicrosoftTeams