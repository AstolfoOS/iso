# fix for screen readers
if grep -Fq 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

# since we are going to be starting X anyways, we just don't run the automated script
# ~/.automated_script.sh
clear
echo "Please wait..."
# user configuration
useradd -m astolfos
yes astolfos | passwd astolfos > /dev/null 2> /dev/null
yes astolfos | sudo -u astolfos chsh -s /usr/bin/zsh > /dev/null 2> /dev/null
cp astolfo-1.jpg /home/astolfos/
chmod ugo+rw /home/astolfos/astolfo-1.jpg
sudo -u astolfos gsettings set org.gnome.desktop.background picture-uri file:///home/astolfos/astolfo-1.jpg
echo 'cat /etc/motd' > /home/astolfos/.zshrc
echo 'cat /etc/motd' > /home/astolfos/.bashrc
# starts display manager
systemctl start gdm