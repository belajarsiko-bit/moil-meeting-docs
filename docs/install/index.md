# Moil Meeting Installation Guide

This guide provides comprehensive instructions for installing Moil Meeting on your system.

---

## Operating System Requirements

Before installing Moil Meeting, ensure your system meets the following requirements.

### Supported Operating Systems

| Operating System | Version | Architecture |
|------------------|---------|--------------|
| Windows | 10, 11 | 64-bit |
| Linux | Ubuntu 20.04+, Debian 11+ | 64-bit |
| macOS | 11 (Big Sur) or later | Intel / Apple Silicon |

### Hardware Requirements

**Minimum Requirements:**

- **CPU**: Intel Core i5 or AMD Ryzen 5 (or equivalent)
- **RAM**: 8 GB
- **Storage**: 500 MB free space
- **GPU**: Integrated graphics with OpenGL 3.3 support
- **USB**: USB 2.0 port for camera connection

**Recommended Requirements:**

- **CPU**: Intel Core i7 or AMD Ryzen 7 (or equivalent)
- **RAM**: 16 GB
- **Storage**: 1 GB free space
- **GPU**: Dedicated GPU with OpenGL 4.5 support
- **USB**: USB 3.0 port for optimal camera performance

### Camera Requirements

- Compatible fisheye camera
- Proper camera drivers installed
- USB connection (USB 3.0 recommended for best performance)

---

## User Installation Guide

Follow these steps to install Moil Meeting on your system.

### Windows Installation

1. **Download the Installer**
   - Download the latest Moil Meeting installer (.exe) from the official website

2. **Run the Installer**
   - Double-click the downloaded file
   - Accept the license agreement
   - Choose installation location
   - Click "Install"

3. **Complete Setup**
   - Wait for installation to complete
   - Optionally create desktop shortcut
   - Click "Finish"

4. **Launch Application**
   - Open Moil Meeting from Start Menu or desktop shortcut

### Linux Installation

**Using APT (Debian/Ubuntu):**

```bash
# Add repository
sudo add-apt-repository ppa:moil/meeting

# Update package list
sudo apt update

# Install Moil Meeting
sudo apt install moil-meeting
```

**Using AppImage:**

```bash
# Download AppImage
wget https://releases.moil.io/meeting/latest/MoilMeeting.AppImage

# Make executable
chmod +x MoilMeeting.AppImage

# Run application
./MoilMeeting.AppImage
```

### macOS Installation

1. **Download DMG File**
   - Download the latest Moil Meeting .dmg from the official website

2. **Mount and Install**
   - Double-click the DMG file
   - Drag Moil Meeting to Applications folder

3. **First Launch**
   - Open from Applications folder
   - Allow security permissions if prompted
   - Grant camera access when requested

---

## Developer Installation Guide

This guide is for developers who want to build Moil Meeting from source or contribute to development.

### Prerequisites

- Python 3.9 or higher
- Git
- pip package manager
- Virtual environment (recommended)

### Clone Repository

```bash
git clone https://github.com/perseverance-tech-tw/video-conference-using-fisheye.git
cd video-conference-using-fisheye
```

### Setup Virtual Environment

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Linux/macOS:
source venv/bin/activate
# On Windows:
venv\Scripts\activate
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

### Run Application

```bash
python main.py
```

### Development Tools

**Linting:**
```bash
pip install flake8
flake8 src/
```

**Testing:**
```bash
pip install pytest
pytest tests/
```

### Building from Source

**Create Executable:**
```bash
pip install pyinstaller
pyinstaller --name MoilMeeting --windowed main.py
```

The built application will be in the `dist/` directory.

---

*For usage instructions after installation, refer to the [Usage](../usage/index.md) guide.*
