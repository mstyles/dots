#### dots

these are configuration files to most of the tools I use day to day. feel free
to take anything you'd like.

what I typically do is clone this repo in my home directory by running
`cd; git clone git@github.com:mstyles/dots.git .dots` and make links between
files stored in here (this repo) and files stored through out my system (mostly
my home directory).

the `configure` script in the repo can be used to create those links. You can
run it without arguments to get a list of what it can link for you. Once you're
ready to use a configuration, just run the script with the item name(s), like
so: `./configure vim tmux`
