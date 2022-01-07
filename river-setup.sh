sudo pacman -Syu --needed base-devel
git clone https://aur.archlinux.org/paru-bin.git
cd paru
makepkg -si

paru -S --noconfirm alacritty backlight_control bluez bluez-utils blueman btop cmatrix discord dunst figlet firefox-developer-edition fluent-cursor-theme-git github-desktop-bin grim gvfs htop libappindicator-gtk2 lolcat lollypop lxappearance maim moc mpv
multimc-bin neofetch nerd-fonts-jetbrains-mono network-manager-applet nitrogen noto-fonts-emoji ntfs-3g pamixer pavucontrol polkit-gnome pcmanfm pipewire pipewire-alsa pipewire-pulse python-dbus powertop python-gobject qbittorrent-dark-git qogir-gtk-theme-git river rofi-lbonn-wayland-git spotify spotify-adblock slurp stacer-git teams-for-linux tela-icon-theme thunar ttf-unifont ttf-ms-fonts viewnior vscodium-bin waybar-git wireplumber wl-clipboard whatsapp-nativefier-dark zoom

for service in bluetooth NetworkManager; do
  sudo systemctl enable --now $service
done

git clone https://github.com/Z-8Bit/River.git ~/Downloads/River

mkdir -p ~/.config/{alacritty,dunst,neofetch,pcmanfm,river,rofi,waybar}

cp ~/Downloads/River/alacritty/alacritty.yml ~/.config/alacritty/
cp -r ~/Downloads/River/dunst/* ~/.config/dunst/
cp ~/Downloads/River/neofetch/config.conf ~/.config/neofetch/
cp -r ~/Downloads/River/pcmanfm/* ~/.config/pcmanfm/
sudo chmod +x ~/Downloads/River/river/* && cp ~/Downloads/River/river/* ~/.config/river/
cp ~/Downloads/River/rofi/* ~/.config/rofi/
cp -r ~/Downloads/River/waybar/* ~/.config/waybar/

chmod +x ~/.config/waybar/modules/*.sh
chmod +x ~/Downloads/River/scripts/*.sh
sudo cp ~/Downloads/River/scripts/*.sh /usr/bin/

git clone https://github.com/Z-8Bit/Wallpapers ~/Pictures/Wallpapers
RED='\033[0;31m'

# sudo pacman -S refind && refind-install
# git clone https://github.com/josephsurin/refind-theme-circle.git && sudo rm -r ./refind-theme-circle/{screenshots,.git}
# sudo cp -r refind-theme-circle /boot/efi/EFI/refind/ && sudo echo "include refind-theme-circle/theme.conf" >> /boot/efi/EFI/refind/refind.conf

sleep 5
echo -e "${RED}PLEASE REBOOT NOW"



