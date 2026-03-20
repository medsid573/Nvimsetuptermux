# Configuration Neovim pour Termux (Android) et Golang

Cette configuration est basée sur [LazyVim](https://www.lazyvim.org/) et optimisée spécifiquement pour une utilisation fluide sur mobile via Termux, avec un support complet pour le développement en Go (Golang).

## 🚀 Fonctionnalités
- **Optimisé pour Termux** : Performance accrue en désactivant les animations et les plugins lourds.
- **Support Go complet** : LSP (`gopls`), autocomplétion, formatage automatique, et outils additionnels via `gopher.nvim`.
- **Raccourcis Termux** : Mappings spéciaux pour les touches `Alt` (`M`) et `Ctrl` qui peuvent être capricieuses sur mobile.
- **Presse-papier Intégré** : Support automatique de `termux-api` pour copier/coller entre Neovim et votre téléphone.

## 📦 Installation dans Termux

Suivez ces étapes simples pour tout configurer automatiquement :

1. **Installer Git** (si ce n'est pas déjà fait) :
   ```bash
   pkg install git -y
   ```

2. **Cloner cette configuration** :
   ```bash
   git clone https://github.com/medsid573/Nvimsetuptermux.git ~/.config/nvim
   ```

3. **Lancer le script d'installation** :
   ```bash
   cd ~/.config/nvim
   chmod +x setup.sh
   ./setup.sh
   ```

4. **Lancer Neovim** :
   ```bash
   nvim
   ```
   *Note : Lors du premier lancement, attendez que tous les plugins soient téléchargés et installés.*

## ⌨️ Raccourcis Clés (Keybindings)

### Navigation
- `<LDR>` (Espace) : Touche leader par défaut.
- `Alt + h/j/k/l` : Déplacement entre les fenêtres.
- `<LDR> e` : Ouvrir l'explorateur de fichiers (Neo-tree).

### Go (Golang)
- `<LDR> c f` : Formater le code.
- `<LDR> c a` : Code actions (importer des packages, etc.).
- `K` : Afficher la documentation de la fonction sous le curseur.
- `gd` : Aller à la définition.

### Termux
- `Ctrl + Space` : Forcer l'autocomplétion.

## 📋 Prérequis pour le presse-papier
Pour que le copier/coller fonctionne avec Neovim, vous devez installer l'application **Termux:API** depuis F-Droid ou le Play Store, puis installer le paquet correspondant dans Termux :
```bash
pkg install termux-api
```

## 🛠️ Personnalisation
Vous pouvez ajouter vos propres plugins dans `lua/plugins/` ou modifier les options dans `lua/config/options.lua`.

---
*Fait avec ❤️ pour les développeurs sur mobile.*
