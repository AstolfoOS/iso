# fix for screen readers
if grep -Fq 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_L
fi

# since we are going to be starting X anyways, we just don't run the automated script
# ~/.automated_script.sh
clear
echo "Please wait..."
# user configuration
useradd -m astolfos
yes astolfos | passwd astolfos > /dev/null 2> /dev/null
yes astolfos | sudo -u astolfos chsh -s /usr/bin/zsh > /dev/null 2> /dev/null
cp astolfo-1.png /usr/share/backgrounds/gnome/adwaita-day.png
cp astolfo-1.png /usr/share/backgrounds/gnome/adwaita-morning.png
cp astolfo-1.png /usr/share/backgrounds/gnome/adwaita-night.png
echo 'cat /etc/motd' > /home/astolfos/.zshrc
echo 'echo " "' >> /home/astolfos/.zshrc
cp /home/astolfos/.zshrc /home/astolfos/.bashrc
# starts internet service
systemctl enable --now NetworkManager
# starts display manager
systemctl start gdm