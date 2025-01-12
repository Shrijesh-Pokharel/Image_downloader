# Image Downloader Script

## Overview
This Bash script is a simple utility for downloading images from a given URL. It supports both `curl` and `wget` commands, allowing it to work on systems where either tool is available. The script is designed to be user-friendly and versatile.

---

## Features
1. **Automatic Tool Selection**
   - The script checks if `curl` or `wget` is installed and uses the available tool to download the image.

2. **Customizable Output Filename**
   - Users can specify an output filename. If none is provided, the script automatically uses the name of the file from the URL.

3. **Error Handling**
   - Provides informative error messages if required tools are not installed or if arguments are missing.

---

## Usage
1. **Make the script executable**:
   ```bash
   chmod +x image_downloader.sh
   ```

2. **Run the script**:
   ```bash
   ./image_downloader.sh <image_url> [output_filename]
   ```

   - **image_url**: The URL of the image to download.
   - **output_filename** *(optional)*: The name to save the image file as. If not specified, the script uses the file name from the URL.

### Example Commands
- Download an image and save it with the original name:
  ```bash
  ./image_downloader.sh https://example.com/image.jpg
  ```

- Download an image and save it with a custom name:
  ```bash
  ./image_downloader.sh https://example.com/image.jpg custom_name.jpg
  ```

---

## Requirements
- **curl** or **wget** must be installed on the system.

### Installing Required Tools
- To install `curl`:
  ```bash
  sudo apt install curl
  ```
  
- To install `wget`:
  ```bash
  sudo apt install wget
  ```

---

## Error Messages
- If no URL is provided:
  ```
  Usage: ./image_downloader.sh <image_url> [output_filename]
  ```

- If neither `curl` nor `wget` is installed:
  ```
  Neither curl nor wget is installed. Please install one of them to use this script.
  ```

---

## License
This script is distributed under the [MIT License](https://opensource.org/licenses/MIT). Use at your own risk.

