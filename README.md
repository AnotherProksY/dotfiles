# Установка Homebrew

## В терминале

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## CLI утилиты

```bash
# Удаление утилит вместе с ее зависимостями
brew tap beeftornado/rmtree

brew tap simplydanny/pass-extensions
brew install tree git htop tmux ctags fzf bat telnet httpie mosh pinentry-mac gnupg vim nmap
/usr/local/opt/fzf/install
```

## Casks

```bash
brew cask install clipy tableplus telegram appcleaner discord gpg-suite docker skype microsoft-remote-desktop whatsapp drawio anydesk protonvpn notion sourcetree
```

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
