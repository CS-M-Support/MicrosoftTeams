# Verbindung mit Teams Connector herstellen
Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

Set-CsOnlinePstnUsage -Identity Global -Usage @{Add="SwisscomET4T"}
New-CsOnlineVoiceRoute -Identity "SwisscomET4T_Unrestricted" -NumberPattern ".*" -OnlinePstnGatewayList "[Domainname]" -OnlinePstnUsages "SwisscomET4T"
New-CsOnlineVoiceRoutingPolicy "SwisscomET4T" -OnlinePstnUsages "SwisscomET4T"

# Gemäss Swisscom rund 15 Minuten warten. Anschliessend kann gemäss dem PowerShell Script "Bind User with Phonenumber" weitergefahren werden

Grant-CsOnlineVoiceRoutingPolicy -Identity [UserPrincipalName] -PolicyName "SwisscomET4T"