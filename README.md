# My dotfiles 🔧

I'm using the excellent [Dotbot](https://github.com/anishathalye/dotbot) to manage everything so setup is super simple⚡️.  Just clone this repository and run its ``./install`` script from your home directory. 

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory.

```zsh
git clone https://github.com/aofdev/dotfiles ~/.dotfiles
```

3. Change the directory ``~/.dotfiles``

```zsh
cd ~/.dotfiles
```

4. Run Dotbot

```zsh
./install
```


