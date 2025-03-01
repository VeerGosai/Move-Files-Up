# Batch Script: Move Files Between Directories

This batch script recursively moves files from subdirectories to their parent directories.

## How it Works:
- The script iterates over all directories (`%%G`) within the current directory.
- For each subdirectory (`%%E`), it moves the files inside that subdirectory back to the parent directory (`%%G`).
- The `MOVE` command is used to move the files with the `/Y` option to automatically confirm overwriting of files.
- It suppresses errors using `2>NUL` to avoid clutter in case of issues.

## Usage:
1. Place the script in the root directory.
2. Run the batch file (`.bat`).
3. All files from subdirectories will be moved to their respective parent directories.

## Example:
```batch
@ECHO OFF
FOR /D %%G in (*) DO (
    CD "%CD%\%%G"
    FOR /D %%E in (*) DO (
        CD "%%E"
        MOVE /Y * "%CD%\%%G" 2>NUL
    )
)
PAUSE
EXIT /B
