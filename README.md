Here's a detailed `README.md` template for your GitHub repository. This covers the purpose of the project, installation, usage, and some additional notes on security and email configuration.

---

# ChromeHarvest

ChromeHarvest is a PowerShell-based tool for backing up and archiving Chrome profile data, including browser passwords and other user data. This script copies Chrome data to a designated backup folder, compresses it into a ZIP file, and optionally sends it to a specified email address.

## Features

- **Backup Chrome Data**: Copies Chrome's "Default" user profile data.
- **Compression**: Saves storage by compressing the backup folder into a ZIP file.
- **Email Notifications**: Optionally emails the compressed file to a specified address.

## Requirements

- **PowerShell**: This script requires PowerShell to be run on a Windows system.
- **Gmail App Password**: For secure emailing, use an app-specific password.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/aryansharma0628/ChromeHarvest.git
   cd ChromeHarvest
   ```

2. Ensure PowerShell is installed and configured on your system.

3. Modify email credentials and target email in the script as required.

## Usage

### Running the Script

1. Open PowerShell as an administrator.
2. Run the script:
   ```powershell
   .\ChromeHarvest.ps1
   ```

The script will:
1. Check for the Chrome profile directory.
2. Copy Chrome profile data to the `Browser_Backup` folder on the Desktop.
3. Compress the folder into `Browser_Backup.zip`.
4. Send an email with the ZIP file attached (if email configuration is completed).

### Email Configuration

To use the email feature, update the following variables in the script:

- `$Username`: Your Gmail address.
- `$Password`: An app-specific password for Gmail (required if two-factor authentication is enabled).
- `$To`: Recipient email address.

For more on generating app passwords, refer to [Google's guide](https://support.google.com/accounts/answer/185833).

### Important Security Note

⚠️ **Warning**: This script involves handling potentially sensitive data. Ensure you:
- Use a secure app-specific password.
- Avoid sharing sensitive data in public repositories.
- Store backups in secure locations.

### Troubleshooting

1. **Permission Denied**: Ensure you have administrative privileges when running the script.
2. **Email Sending Issues**: Verify your SMTP configuration and Gmail settings, and ensure the email credentials are correct.

## License

This project is licensed under the MIT License.

--- 
