# .bashrcを読み込ませる
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
export PATH=$HOME/.nodebrew/current/bin:$PATH
