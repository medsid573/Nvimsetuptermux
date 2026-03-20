#!/data/data/com.termux/files/usr/bin/bash

# Script d'installation automatique pour Neovim + Go sur Termux
echo "🚀 Démarrage de l'installation de l'environnement Neovim pour Termux..."

# Mise à jour des dépôts
echo "🔄 Mise à jour des paquets..."
pkg update -y && pkg upgrade -y

# Installation des dépendances
echo "📦 Installation de Neovim, Golang, Git et Termux-API..."
pkg install -y neovim golang git termux-api coreutils binutils build-essential

# Création du répertoire de configuration si nécessaire
mkdir -p ~/.config/nvim

# Note: L'utilisateur a probablement déjà cloné ce repo dans ~/.config/nvim
# Mais on s'assure que gopls est installé pour Go
echo "🏎️ Installation de gopls pour le support Go LSP..."
go install golang.org/x/tools/gls/gopls@latest

# Installation d'autres outils Go utiles via gopher.nvim (gomodifytags, impl)
echo "🛠️ Installation d'outils Go supplémentaires..."
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/cweill/gotests/gotests@latest

echo "✅ Installation terminée !"
echo "👉 Pour lancer Neovim, tapez simplement : nvim"
echo "💡 Note : Lors du premier lancement, 'lazy.nvim' installera automatiquement tous les plugins."
echo "📋 Pour le presse-papier, assurez-vous d'avoir installé l'application 'Termux:API' sur votre Android."
