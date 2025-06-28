# 🧠 Pomodoro Terminal Timer (Zsh-Based)

A simple, colorful, and voice-notified Pomodoro timer designed for the terminal.  
Perfect for study sessions, deep work, or silent focus — powered by `timer`, `spd-say`, and `zsh`.

---

## ✨ Features

- 🔁 **Custom Work & Break durations** — enter durations interactively
- 🔔 **Voice Notifications** using `spd-say` (or switch to sound/notify-send)
- 🎨 **Colorful Output** using `lolcat`
- 💻 **Lightweight and CLI-native** — no GUI needed
- ☑️ Works on: Arch, Ubuntu, Fedora, Hyprland, EndeavourOS, Debian

---

## 🛠️ Dependencies

| Package            | Purpose                  |
|--------------------|--------------------------|
| [`timer`](https://github.com/caarlos0/timer) | CLI countdown timer |
| `speech-dispatcher` + `spd-say` | Voice alerts |
| `lolcat`           | Colorful terminal output |
| `zsh`              | Required shell to run script |
| `go` + `git`       | To build `timer` from source |

---

## 📦 Installation (Cross-Distro)

### 🐧 Arch / Endeavour / Manjaro
```bash
sudo pacman -S zsh speech-dispatcher lolcat go git
yay -S timer-bin   # or build manually below
```

### 🐧 Ubuntu / Debian
```bash
sudo apt update
sudo apt install zsh speech-dispatcher lolcat golang git

# Build timer manually
git clone https://github.com/caarlos0/timer.git
cd timer
go build -o timer
sudo mv timer /usr/local/bin/
```

### 🐧 Fedora
```bash
sudo dnf install zsh speech-dispatcher ruby-lolcat golang git

# Build timer manually
git clone https://github.com/caarlos0/timer.git
cd timer
go build -o timer
sudo mv timer /usr/local/bin/

