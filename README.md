# ChromeHarvest

**ChromeHarvest** is a toolkit designed to automate data extraction and backup from Chrome browser profiles and other data sources. This project is intended for educational and research purposes to understand data extraction techniques and their associated security implications.

## Project Contents

1. **chrome.ps1**
   - A PowerShell script to back up user data from Google Chrome, including bookmarks, history, and saved login data.
   - **Usage**:
     - Run in PowerShell with administrative privileges.
     - The script creates a backup folder, compresses it, and optionally emails the ZIP file to a specified address.
   - **Features**:
     - Creates a backup directory on the Desktop.
     - Compresses Chrome data into a ZIP archive.
     - Sends the archive to a designated email.

2. **code.py**
   - A Python script for further data extraction or processing tasks related to Chrome or general user data.
   - **Usage**:
     - Run `code.py` with Python 3.
     - The script’s purpose can be modified to parse or extract specific data elements.

3. **payload.dd**
   - A binary data dump file (e.g., memory or disk image) that can be analyzed for forensics or data extraction.
   - **Usage**:
     - Analyze using forensic tools like `dd`, `Autopsy`, or `FTK Imager`.
     - Ideal for investigating stored data and examining potential vulnerabilities.

## Getting Started

### Prerequisites

- **PowerShell**: Required for running `chrome.ps1`.
- **Python 3**: Required for executing `code.py`.
- **Forensic Analysis Tools**: Optional but recommended for analyzing `payload.dd`.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/aryansharma0628/ChromeHarvest.git
   cd ChromeHarvest
   ```

2. Make the PowerShell and Python scripts executable:
   ```bash
   chmod +x chrome.ps1 code.py
   ```

### Usage

1. **Run chrome.ps1**:
   - Open PowerShell with administrative rights.
   - Execute the script to back up Chrome data:
     ```powershell
     .\chrome.ps1
     ```

2. **Run code.py**:
   - Ensure Python 3 is installed.
   - Execute the script:
     ```bash
     python code.py
     ```

3. **Analyze payload.dd**:
   - Use forensic tools like `dd` or `Autopsy` to inspect and analyze `payload.dd`.

## Disclaimer

⚠️ **Warning**: Unauthorized data access or extraction is illegal. This project is for educational purposes and must be used responsibly, only with permission on authorized devices.

## License

This project is licensed under the MIT License. See the `LICENSE` file for full details.
