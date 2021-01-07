# blog.azuresky.ca (2013 Edition)

© 2013 Michael Chang

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
$ sudo apt-get update
$ sudo apt-get upgrade
$ ssh-keygen -t ed25519
$ git clone ...
$ git remote add bitbucket ...
$ sudo apt-get install build-essential zsh libssl-dev libreadline-dev zlib1g-dev python2
$ wget -q https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer -O- | bash
$ chsh m9chang
... /usr/bin/zsh
$ echo 'export PATH="${PATH}:${HOME}/.rbenv/bin"' >> ~/.zshrc
```

### Install ruby

```
$ rbenv install --list
# Install the latest version, for example:
$ rbenv install 2.6.6
$ rbenv global 2.6.6
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

    $ bundle exec guard

You will need to run some sort of web server separately (nanoc view, python -m
SimpleHTTPServer, python3 -m http.server, nginx, ...)

## Standing on the Shoulders of Giants
- nanoc (MIT)
- bootstrap 3 (Apache)
- bits borrowed from clarkdave.net

