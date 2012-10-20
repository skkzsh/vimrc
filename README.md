# Install

```sh
git clone git://github.com/skkzsh/vimrc.git
cd vimrc
git submodule init
git submodule update
```

```vim
:BundleInstall
```

# Update

```sh
cd vimrc
git pull origin master

git submodule init
git submodule update
git submodule foreach 'git checkout master; git pull'
```

```vim
:BundleInstall!
```
