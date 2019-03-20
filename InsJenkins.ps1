Start-BitsTransfer -Source "https://softwaretorage.blob.core.windows.net/jenkins/jenkins.msi" -Destination "D:\"  
Start-Process D:\jenkins.msi /qn
Start-Sleep 100