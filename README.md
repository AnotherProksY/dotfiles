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

brew install --formula tree git htop tmux ctags fzf bat telnet httpie mosh pinentry-mac gnupg vim nmap pandoc mvim
/usr/local/opt/fzf/install
```

Casks:

```bash
brew install --casks tableplus telegram appcleaner discord docker whatsapp protonvpn boop maccy numi qlmarkdown spotify macdown
```

## Другие программы

1. [Microsoft Excel](https://apps.apple.com/ru/app/microsoft-excel/id462058435?l=en&mt=12)
2. [Microsoft Word](https://apps.apple.com/ru/app/microsoft-word/id462054704?l=en&mt=12)
3. [XCode](https://apps.apple.com/ru/app/xcode/id497799835?l=en&mt=12)
4. [DaisyDisk](https://apps.apple.com/ru/app/daisydisk/id411643860?l=en&mt=12)
5. [The Unarchiver](https://apps.apple.com/ru/app/the-unarchiver/id425424353?mt=12)
6. [Aseprite](https://www.aseprite.org)
7. [Paper](https://apps.apple.com/ru/app/paper-writing-app/id1143513744?l=en&mt=12)
8. [Whiskey](https://usewhiskey.com)
9. [URL Linker for Safari](https://apps.apple.com/ru/app/url-linker-for-safari/id1289119450?l=en&mt=12)

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
