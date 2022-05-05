# Verbindung mit Microsoft Teams herstellen
Connect-MicrosoftTeams

# Anpassung der Upgrade Policy
Grant-CsTeamsUpgradePolicy -PolicyName UpgradeToTeams -Global

# Verbindung mit Microsoft Teams trennen
Disconnect-MicrosoftTeams