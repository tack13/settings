# Git

## 前提

`.bash_profile` と `bashrc` の存在を確認

**コマンド**

```bash
$ ls -la ~/ | grep ".bash_*"
```

### ない場合

```bash
$ touch ~/.bash_profile
$ touch ~/.bashrc
```

### パスを通す

`.bash_profile` に追記

```bash
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
```

## Gitのインストール

**コマンド**

```bash
$ brew install git
```

Homebrewでインストール  
※`bash-completion`を使用するため

[Homebrew](https://brew.sh/index_ja.html)

**コマンド**

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## bash-completionのインストール

**コマンド**

```bash
$ brew install bash-completion
```

**`.bashrc`に追加**

```bash
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi
```

### ブランチ名を表示

```bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
```

