#!/bin/bash

# ==============================================================================
# Update the system
# ==============================================================================
echo "=============================================================================="
echo "Updating the system..."
sudo yum update -y
echo "System update complete."
echo "=============================================================================="

# ==============================================================================
# Install Docker Engine
# ==============================================================================
echo "=============================================================================="
echo "Installing Docker..."
sudo amazon-linux-extras install docker -y
echo "Docker installation complete."
echo "=============================================================================="

# ==============================================================================
# Start Docker service
# ==============================================================================
echo "=============================================================================="
echo "Starting Docker service..."
sudo systemctl start docker
echo "Docker service started."
echo "=============================================================================="

# ==============================================================================
# Enable Docker to start on boot
# ==============================================================================
echo "=============================================================================="
echo "Enabling Docker to start on boot..."
sudo systemctl enable docker
echo "Docker is now enabled to start on boot."
echo "=============================================================================="

# ==============================================================================
# Install Docker Compose
# ==============================================================================
echo "=============================================================================="
echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "Docker Compose installation complete."
echo "=============================================================================="

# ==============================================================================
# Verify the installations
# ==============================================================================
echo "=============================================================================="
echo "Verifying Docker installation..."
docker --version
if [ $? -eq 0 ]; then
    echo "Docker is installed correctly."
else
    echo "Docker installation failed."
fi

echo "Verifying Docker Compose installation..."
docker-compose --version
if [ $? -eq 0 ]; then
    echo "Docker Compose is installed correctly."
else
    echo "Docker Compose installation failed."
fi
echo "=============================================================================="
