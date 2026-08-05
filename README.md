# Мои настройки

## Homebrew

Установка:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Formula:

```bash
# Удаление утилит вместе с ее зависимостями
brew tap beeftornado/rmtree
brew tap epk/epk
brew tap shaunsingh/SFMono-Nerd-Font-Ligaturized
brew tap FelixKratz/formulae
brew install tree-sitter-cli

brew install --formula tree git htop btop tmux ctags fzf bat telnet mosh vim nmap mczachurski/wallpapper/wallpapper git-lfs ripgrep neovim npm lazygit diff-so-fancy fish gh mole fd
/usr/local/opt/fzf/install
```

Casks:

```bash
brew install --casks tableplus telegram discord docker docker-desktop boop maccy the-unarchiver httpie font-sf-mono-nerd-font-ligaturized google-chrome nikitabobko/tap/aerospace bitwarden bettermouse claude-code termius ghostty tailscale-app
```

## Другие программы

1. [XCode](https://apps.apple.com/ru/app/xcode/id497799835?l=en&mt=12)
2. [The Unarchiver](https://apps.apple.com/ru/app/the-unarchiver/id425424353?mt=12)
3. [Aseprite](https://www.aseprite.org)
4. [JSON Peep](https://apps.apple.com/ru/app/json-peep-for-safari/id1458969831?l=en&mt=12)
5. [Docker desktop](https://www.docker.com/products/docker-desktop/)
6. [Pico-8](https://www.lexaloffle.com/pico-8.php)
7. [Amphetamine](https://apps.apple.com/ru/app/amphetamine/id937984704?l=en-GB&mt=12)
8. [Klack](https://apps.apple.com/ru/app/klack/id6446206067?l=en-GB&mt=12Klack)
9. [iA Writer](https://ia.net/writer)
10. [iA Presenter](https://ia.net/presenter)

## Better Mouse

Файл конфигурации лежит в директории `MX-Master-3S`

## Pyenv

```bash
curl https://pyenv.run | bash
exec $SHELL
```

## Sudo TouchID for TMUX

```bash
# Нужный "pam" файл:
brew install fabianishere/personal/pam_reattach

# Заходим в рута и редактируем "pam" для sudo
sudo su -
vim /etc/pam.d/sudo

# Добавляем эти две строчки (важно соблюдать порядок строк):
auth     optional     /opt/homebrew/lib/pam/pam_reattach.so
auth     sufficient   pam_tid.so

# Сделать "wq!" внутри Vim
# Перезайти в терминал (удалить tmux сессию + перезапустить Terminal.app)
```

## Включить опцию для перемещения окон через CTRL+CMD+MOUSE

```bash
defaults write -g NSWindowShouldDragOnGesture -bool true
```
