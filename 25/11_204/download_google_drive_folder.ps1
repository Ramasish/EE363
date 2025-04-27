# === Ensure gdown is installed ===
pip install --upgrade gdown

# === Set the Google Drive folder URL ===
$folderUrl = "https://drive.google.com/drive/folders/1inPsAmxpGm4bOLWiutJG9nv7APLpqZGy?usp=drive_link"

# === Extract Folder ID from the URL ===
$folderId = $folderUrl -replace "https://drive.google.com/drive/folders/", ""  # Remove the URL part
$folderId = $folderId -replace "\?usp=.*", ""  # Remove the query string (?usp=drive_link)

# === Set the destination directory ===
$destinationDir = ".\data"

# === Create the destination directory if it doesn't exist ===
if (-not (Test-Path -Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir | Out-Null
}

# === Run gdown to download the folder ===
Write-Host "Downloading from folder ID $folderId into $destinationDir..."
python -m gdown --folder "https://drive.google.com/drive/folders/$folderId" -O $destinationDir

Write-Host "`n✅ Download completed! Files are saved in $destinationDir"
