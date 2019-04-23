$storageAccountName = "MY-STORE"
$storageAccountKey = "MY-KEY"
$ctx = New-AzureStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey
$ProgressPreference="SilentlyContinue"
$files = Get-childitem "C:\Users\alankar.mehta\Documents\Project\BigData\demofiles"
foreach($file in $files)
{
    $localfile = "C:\Users\alankar.mehta\Documents\Project\BigData\demofiles\$file"
    $remotefile = "demofiles/$file"
    Set-AzureStorageBlobContent -File "$localfile" -Container "asdemocontainer" -Blob $remotefile -Context $ctx -Force
}
