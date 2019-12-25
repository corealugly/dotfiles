# Установка пакетов с использованием stow 
## Установка urxvt
```stow --dotfiles -v urxvt```
## удаление пакета urxvt
```stow --dotfiles -D urxvt```
## Установка пакета ETC в /
```sudo stow --dotfiles -vvv -t / etc```
## удаление пакета ETC из /
```sudo stow -D -t / etc/```

> пакеты ставящиеся в / требуют прав root

# Fonts
alias updateFonts='fc-cache -vf ~/.fonts'
alias checkFonts='echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"'
