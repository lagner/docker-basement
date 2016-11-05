#!/bin/bash

/usr/games/cowsay -f beavis.zen "I'm BATMAN!"

cat << EOF >> $HOME/.bashrc

set_prompt () {
    Last_Command=\$? # Must come first!
    Blue='\[\e[01;34m\]'
    Red='\[\e[01;31m\]'
    Green='\[\e[01;32m\]'
    Reset='\[\e[00m\]'
    FancyX='\342\234\227'
    Checkmark='\342\234\223'

    PS1=""

    if [[ \$Last_Command == 0 ]]; then
        PS1+="\$Green\$Checkmark "
    else
        PS1+="\$Red\$FancyX "
    fi
    PS1+="\$Green(DOCKER) \$Blue\\w \\\$\$Reset "
}

PROMPT_COMMAND='set_prompt'
alias mc="mc -S nicedark"
EOF

cd $workdir

/bin/bash -c "$@"
