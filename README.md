# Dria-Node
How to run and Dria Node setup

Please follow me in X : https://x.com/0xsoros
Thanks you for support me

Hardware Minumum Specific 
- CPU: 2–4 core
- RAM: 4–8 GB
- Storage: Minimal 50 GB - 100 GB SSD


## Step 1 Update and Upgrade
```
sudo apt-get update && sudo apt-get upgrade -y
```
## Step 2 Git clone and copy this script
```
git clone https://github.com/CodeDialect/Dria
cd Dria
chmod +x setup_dria.sh
./setup_dria.sh
```
## Step 3 Install Dria Laucher
```
curl -fsSL https://dria.co/launcher | bash
source ~/.bashrc
which dkn-compute-launcher
```
## Setting YouR dkn
```
dkn-compute-launcher settings
```
## Change port
```
From 4001 to 4101
```
- Import Your Private_Key

- Choose Gemini API and Put your Gemini API

- You can visit this link to get Api gemini : https://aistudio.google.com/app/apikey
- Save & Exit

## Run your dkn
```
dkn-compute-launcher start
```
- Choose Provide Gemini
- Choose Gemini 2.0 and klik Right Cursor and Enter

## Step 4 Check your logs
```
screen -r dria
```
- Go to website dria : https://dria.co/edge-ai
- Login with your wallet
- Klik my node
- Done 
















