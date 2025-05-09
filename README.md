# michael-chang.ca (2013 Edition)

© 2013-2024 Michael Chang

Static site generator loosely modeled after the instructions at: clarkdave.net/2012/02/building-a-static-blog-with-nanoc/.

## GitPod start

- https://gitpod.io/#https://github.com/cbhl/azuresky13

## Quick start

### [Install Homebrew](https://brew.sh)

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```
### [Install rbenv](https://github.com/rbenv/rbenv)

```
$ brew install rbenv
$ rbenv init
```

### [rbenv-installer](https://github.com/rbenv/rbenv-installer) (Ubuntu on WSL)

```
$ sudo apt update
$ sudo apt upgrade
$ ssh-keygen -t ed25519
$ git clone ...
$ git remote add bitbucket ...
$ sudo apt install build-essential zsh libssl-dev libreadline-dev zlib1g-dev libffi-dev libyaml-dev
$ wget -q https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer -O- | bash
$ chsh m9chang
... /usr/bin/zsh
$ echo 'export PATH="${PATH}:${HOME}/.rbenv/bin"' >> ~/.zshrc
```

### Install ruby

```
$ rbenv install --list
# Install the latest version, for example:
$ rbenv install 3.4.3
$ rbenv global 3.4.3
$ rbenv rehash
```

### [Install bundler](http://bundler.io/)

```
$ which gem
# Note, you need at least bundler 2.x now (and a corresponding Ruby).
$ gem install bundler
$ rbenv rehash
```

### Install nanoc and dependencies

```
$ bundle install
$ rbenv rehash
```

If that doesn't work, maybe Gemfile.lock is too old for the new ruby. Try:

```
$ bundle update
$ rbenv rehash
```

### Verify permissions

```
# Make sure the other read bit is set, e.g.
# -rw-r--r-- for files
# -rwxr-xr-x for directories.
$ ls -lR content
```

### Deploy

```
$ bundle exec nanoc co
$ bundle exec nanoc deploy
```

## Development

    $ bundle exec nanoc live

## Standing on the Shoulders of Giants
- nanoc (MIT)
- bootstrap 3 (Apache)
- bits borrowed from clarkdave.net

