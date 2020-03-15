# dotfiles

After setting up serveral different machines over the last few years, I've decided to not repeat myself anymore.
Thus, I've created this repo to help me manage my dotfiles and other configs.

The methodology that I'm following is based on 
[this hackernews thread](https://news.ycombinator.com/item?id=11070797) with modifications to the names of folders.

run the following command to get set up

create an access token by doing the following steps in
[this gist](https://gist.github.com/wgottschalk/362906291c94081e3dbe434ac424fa07)

then run the following commands:

```
git clone --bare https://github.com/wgottschalk/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

