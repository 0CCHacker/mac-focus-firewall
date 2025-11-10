# mac-focus-firewall 🚫📱  

A simple macOS project to permanently or temporarily block social media using `/etc/hosts` and `/etc/resolver`.  

## Installation  
```bash  
git clone https://github.com/<yourusername>/mac-focus-firewall.git  
cd mac-focus-firewall  
chmod +x *.sh  
```  

## Set Up Permanent Block  
```bash  
sudo ./ban_social.sh  
```  

## Toggle Study Mode  
```bash  
./focus.sh on     # Enable focus  
./focus.sh off    # Disable focus  
```  

## Remove All Blocks  
```bash  
sudo ./unblock_social.sh  
```  

All changes persist across reboots and Wi-Fi networks. 
