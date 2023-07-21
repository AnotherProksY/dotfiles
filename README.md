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

brew install --formula tree git htop tmux ctags fzf bat telnet httpie mosh pinentry-mac gnupg vim nmap pandoc cloc nvim ripgrep java11 groovy
/usr/local/opt/fzf/install
```

Casks:

```bash
brew install --casks tableplus telegram appcleaner discord docker boop clipy numi zoom firefox transmission imazing figma
```

## Другие программы

1. [Microsoft Excel](https://apps.apple.com/ru/app/microsoft-excel/id462058435?l=en&mt=12)
2. [Microsoft Word](https://apps.apple.com/ru/app/microsoft-word/id462054704?l=en&mt=12)
3. [XCode](https://apps.apple.com/ru/app/xcode/id497799835?l=en&mt=12)
4. [DaisyDisk](https://apps.apple.com/ru/app/daisydisk/id411643860?l=en&mt=12)
5. [The Unarchiver](https://apps.apple.com/ru/app/the-unarchiver/id425424353?mt=12)
6. [Aseprite](https://www.aseprite.org)
7. [JSON Peep](https://apps.apple.com/ru/app/json-peep-for-safari/id1458969831?l=en&mt=12)
8. [Docker desktop](https://www.docker.com/products/docker-desktop/)
9. [HTTPie Desktop](https://httpie.io/product)
10. [Magnet](https://apps.apple.com/ru/app/magnet/id441258766?l=en&mt=12)
11. [Pico-8](https://www.lexaloffle.com/pico-8.php)
12. [Shortery](https://apps.apple.com/ru/app/shortery/id1594183810?l=en&mt=12)
13. [WhatsApp](https://apps.apple.com/ru/app/whatsapp-desktop/id1147396723?l=en&mt=12)

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
