IOprobe

IOprobe is a lightweight bash script that automatically detects and displays all peripherals connected to a Linux system. The output is color‑coded, making it easy to identify USB devices, PCI devices, block storage, network interfaces, input hardware, and serial/TTY ports at a glance.

Features
- Color‑coded sections for quick visual parsing.
- Supports USB, PCI, block devices, network, input, and TTY/serial devices.
- Portable across most Linux distributions.
- Concise and easy to extend.

Usage
-----
1. Clone or download this repository.
2. Make the script executable: chmod +x IOprobe.sh
3. Run the script: ./IOprobe.sh

You’ll see a color‑coded list of connected peripherals.

Example Output
Peripherals on myhost — 2025-09-24

[USB]
  Bus 001 Device 002: ID 8087:8000 Intel Corp. Integrated Hub

[PCI]
  00:14.0 USB controller: Intel Corporation ...

[BLOCK]
  sda   Samsung SSD 1TB   931.5G disk

[NET]
  eth0  UP  192.168.1.42

[INPUT]
  Keyboard
  Mouse

[TTY / SERIAL]
  /dev/ttyUSB0

[DEV INPUT]
  usb-Logitech_USB_Receiver-event-mouse


Disclaimer
This software is provided "as is", without warranty of any kind.  
Use at your own risk. IOprobe is intended for educational and diagnostic purposes only.  
The authors and contributors are not responsible for any misuse, damage, or issues arising from running this script on your systems.
