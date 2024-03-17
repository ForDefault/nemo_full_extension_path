#### My Other Nemo Actions:
- [nemo_copy_folder_content_list](https://github.com/ForDefault/nemo_copy_folder_content_list)


# Full_Ext_Path Installation Guide

This Nemo action enables users to copy the full paths of files and folders, including their names and extensions, directly to the clipboard. 

## Enabled Features
- **Full Path Copying**: Copies the entire path of files and folders to the clipboard, including filenames and their extensions.
- **User-Friendly**: Automatically adapts to the user's environment, requiring no manual configuration of file paths or usernames.
- **Self-Cleaning**: Post-installation, the script engages in a thorough clean-up process, deleting the cloned repository from your home directory. This action ensures your workspace remains uncluttered, preserving the sanctity and available space of your home directory without leaving behind any residual files or folders.

## Quick Start
 ### SingleCommand Install

To install the Nemo action **on Linux Mint**, open a terminal and execute this **SingleCommand**:

```
REPO_URL="https://github.com/ForDefault/nemo_full_extension_path.git" && \
REPO_NAME=$(basename $REPO_URL .git) && \
git clone $REPO_URL && \
cd $REPO_NAME && \
sudo apt-get update && sudo apt-get install -y xclip && \
sed -i "s|/home/\$USER|/home/$USER|g" Full_Ext_Path.nemo_action && \
mv Full_Ext_Path.sh /home/$USER/.local/share/nemo/actions/ && \
mv Full_Ext_Path.nemo_action /home/$USER/.local/share/nemo/actions/ && \
chmod +x /home/$USER/.local/share/nemo/actions/Full_Ext_Path.sh && \
chmod +x /home/$USER/.local/share/nemo/actions/Full_Ext_Path.nemo_action && \
cd .. && rm -rf $REPO_NAME
```

## Usage

Right-click on any file or folder within Nemo, and select "Full_Ext_Path" from the context menu. The complete path of the selected item will be copied to your clipboard.

## Post-Installation

To ensure the changes take effect, you may need to restart Nemo with the following command:

```
 nemo -q
```

## Troubleshooting

If the action does not appear in Nemo's context menu or doesn't function as expected, please check the following:

- Ensure `xclip` is installed and operational.
```
sudo apt install xclip
```

- Verify that the action script has the correct permissions and is located at 
```
cd /home/$USER/.local/share/nemo/actions/
```
- Restart Nemo using to apply the changes.

```
nemo -q
```
