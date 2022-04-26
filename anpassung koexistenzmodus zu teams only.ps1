# Mit MS Teams Verbinden
Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

# Anpassung der Upgrade Policy
Grant-CsTeamsUpgradePolicy -PolicyName UpgradeToTeams -Global