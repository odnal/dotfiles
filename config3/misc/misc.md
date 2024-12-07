to change the ansi colors of your default prompt bash shell (put it in ur .bashrc):

`PS1='\[\033[0m\][\[\033[0m\]\u@\[\033[1;96m\]\h \[\033[0m\]\w]\$ '`

to check the ansi colors:

`bash`
    `for i in {30..37} {90..97}; do echo -e "\033[${i}mColor ${i}\033[0m"; done`

