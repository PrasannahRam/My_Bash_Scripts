# BringDesk

**BringDesk** is a lightweight Bash utility for Ubuntu that helps you create desktop shortcuts for installed applications directly from the terminal.

Instead of manually locating `.desktop` files, BringDesk searches for applications by name and lets you select which shortcut to place on your Desktop.

## Features

- **Application Search:** Search installed applications using their desktop entry names.
- **Multiple Locations:** Searches application launchers from common system, user, Snap, and Flatpak directories.
- **Interactive Selection:** Displays matching applications and lets you choose one.
- **Shortcut Creation:** Copies the selected `.desktop` launcher to your Desktop.
- **Colored Output:** Uses terminal colors to distinguish success messages, warnings, and errors.
- **Simple Installation:** Installs into `~/.local/bin` without requiring root privileges.

## Requirements

- Ubuntu or a compatible Linux distribution
- Bash
- `grep`
- `xdg-user-dir`

## Installation

Clone the repository:

```bash
git clone https://github.com/PrasannahRam/My_Bash_Scripts/
```

Navigate into the project directory:

```bash
cd bringdesk
```

Run the installer:

```bash
bash install.sh
```

The installer will:

1. Create `~/.local/bin` if it doesn't exist.
2. Copy the BringDesk executable into that directory.
3. Make the executable runnable.
4. Add `~/.local/bin` to your Bash PATH if necessary.

If the PATH configuration was added, restart your terminal or run:

```bash
source ~/.bashrc
```

## Usage

Run BringDesk from any terminal:

```bash
bringdesk
```

Search for a specific application:

```bash
bringdesk firefox
```

BringDesk displays matching application launchers. Enter the corresponding number to create the shortcut.

The selected shortcut will be copied to your configured Desktop directory.

**Note:** On Ubuntu, you may need to right-click the newly created shortcut and select **Allow Launching** before opening it.

## Uninstallation

Navigate to the cloned repository directory and run:

```bash
bash uninstall.sh
```

This removes the installed BringDesk executable from `~/.local/bin`.

## Project Structure

```text
bringdesk/
├── bringdesk       # Main application
├── install.sh      # Installation script
├── uninstall.sh    # Uninstallation script
├── README.md       # Documentation
└── LICENSE         # Project license
```

## How It Works

BringDesk searches `.desktop` application launcher files in common Linux application directories.

These files contain metadata about applications, including their displayed names and execution commands.

Once a matching launcher is found, BringDesk presents the available results and copies the selected launcher to the Desktop.
