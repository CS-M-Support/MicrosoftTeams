# MSOnline Modul installieren
Install-Module MSOnline

# Mit Microsoft 365 Tenant verbinden
Connect-MsolService

# Licence Account SkuId abrufen
Get-MsolAccountSku

# Teams Telefonie Lizenz einem User zuweisen
Set-MsolUserLicense -UserPrincipalName "[UPN]" -AddLicenses "[TenantName]:BUSINESS_VOICE_DIRECTROUTING"

# Teams Telefonie Lizenz (virtueller User) zuweisen
Set-MsolUserLicense -UserPrincipalName "[UPN]" -AddLicenses "[TenantName]:PHONESYSTEM_VIRTUALUSER"