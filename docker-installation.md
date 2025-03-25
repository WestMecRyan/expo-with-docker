# Installing Docker

```bash
# First, remove any potentially conflicting packages
sudo apt remove docker docker-engine docker.io containerd runc

# Update apt and install required packages
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update apt again with the new repository
sudo apt update

# Install Docker Engine, containerd, and Docker Compose
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

After installing, add your user to the Docker group:

```bash
sudo usermod -aG docker $USER
```

Then log out and back in, or use the following to apply the group change immediately:

```bash
newgrp docker
```

Verify the installation:

```bash
docker --version
```
