# 🌐 Domain Monitor

## Overview

Domain Monitor is a simple, powerful Bash script that helps you monitor the status of websites continuously. With an easy-to-use interface and flexible monitoring options, you can keep track of your website's uptime effortlessly.

## ✨ Features

- 🕒 Flexible monitoring duration (supports hours and minutes)
- 🌈 Color-coded console output
- 📝 Automatic logging of website status
- 🔍 Customizable monitoring interval
- 📊 Detailed status tracking

## 🚀 Installation

### One-Line Installation

```bash
curl -sSL https://raw.githubusercontent.com/yousafkhamza/DomainMonitor/main/install-domain-monitor.sh | sudo bash
```

### Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/yousafkhamza/DomainMonitor.git
cd DomainMonitor
```

2. Make the scripts executable:
```bash
sudo chmod +x domain-monitor install-domain-monitor.sh
```

3. Install system-wide:
```bash
sudo ./install-domain-monitor.sh
```

## 🔧 Usage

Simply run the `domain-monitor` command, and you'll be guided through an interactive setup:

```bash
$ domain-monitor
🌐 Domain Monitor Tool
------------------------
➜ Enter the website URL to monitor (e.g., https://example.com): https://www.google.com
➜ Enter monitoring interval (min 10 seconds): 30
➜ Enter monitoring duration (e.g., 2h, 30m): 1h
```

### Command-Line Options

- Run with no arguments to start interactive monitoring
- The tool will prompt you for:
  - Website URL to monitor
  - Monitoring interval
  - Monitoring duration

## 📋 Monitoring Details

- Monitors website status by checking HTTP response codes
- Supports monitoring for both hours and minutes
- Minimum monitoring interval is 10 seconds
- Generates a `website_status.log` with detailed monitoring information
- Previous log files are backed up with timestamps

## 🎨 Output Explanation

- ✓ Green status: Website is responding (HTTP 200 OK)
- ✗ Red status: Website is not responding or returned an error code

## 🗑️ Uninstallation

```bash
curl -sSL https://raw.githubusercontent.com/yousafkhamza/DomainMonitor/main/install-domain-monitor.sh | sudo bash -s uninstall
```

Or manually:
```bash
sudo rm /usr/local/bin/domain-monitor
```

## 🔒 Requirements

- Bash
- curl
- Sudo privileges for installation

## 💡 Example Scenarios

1. Monitor a website for an hour every 30 seconds:
```bash
domain-monitor
# Prompt: URL = https://example.com
# Prompt: Interval = 30
# Prompt: Duration = 1h
```

2. Track a critical service for 30 minutes:
```bash
domain-monitor
# Prompt: URL = https://api.yourservice.com
# Prompt: Interval = 15
# Prompt: Duration = 30m
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

## 📧 Contact

Yousaf - yousaf.k.hamza@example.com

Project Link: [https://github.com/yousafkhamza/DomainMonitor](https://github.com/yousafkhamza/DomainMonitor)

---

**Disclaimer:** Always ensure you have permission to monitor websites and comply with their terms of service.
