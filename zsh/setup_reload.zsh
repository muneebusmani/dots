# Step 1: Create the script
cat >reload_psmouse <<EOF
#!/usr/bin/env bash
sudo modprobe -r psmouse
sudo modprobe psmouse
EOF

# Step 2: Grant execute permission
chmod +x reload_psmouse

# Step 3: Move the script to /usr/local/bin/
sudo mv reload_psmouse /usr/local/bin/

# Step 4: Create the systemd unit file
cat >reload_psmouse.service <<EOF
[Unit]
Description=Reload psmouse module after suspend
After=suspend.target

[Service]
Type=simple
ExecStart=/usr/local/bin/reload_psmouse

[Install]
WantedBy=suspend.target
EOF

# Step 5: Move the systemd unit file to /etc/systemd/system/
sudo mv reload_psmouse.service /etc/systemd/system/

# Step 6: Reload systemd
sudo systemctl daemon-reload

# Step 7: Enable the service
sudo systemctl enable reload_psmouse.service

echo "Script created and configured successfully."
