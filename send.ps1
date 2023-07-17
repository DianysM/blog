Param([string]$PackageName, [string]$Server, [string]$Port)

if([System.string]::isNullOrEmpty($PackageName)){
	Write-Output "El parametro -PackageName es requerido"
	Exit 1
}
if([System.string]::isNullOrEmpty($Server)){
	Write-Output "El parametro -Server es requerido"
	Exit 1
}
if([System.string]::isNullOrEmpty($Port)){
	Write-Output "El parametro -Port es requerido"
	Exit 1
}
$path = [System.Environment]::CurrentDirectory
$originPath = "$path\\$PackageName"
$wc = New-Object System.Net.WebClient
$semicolon = ":"
Write-Output "http://$($Server)$($semicolon)$($Port)/deployer/upload"
$resp = $wc.UploadFile("http://$($Server)$($semicolon)$($Port)/deployer/upload",$originPath)