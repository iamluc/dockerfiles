About
-----

Small composer image based on Alpine linux (~21 Mo)

Usage
-----

```sh
docker run --rm -it -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/composer
```

Tips
----

Create an alias

```sh
alias composer="docker run --rm -it -v \$HOME:\$HOME -w \$PWD -u \`id -u\`:\`id -g\` iamluc/composer"
```

Share your composer directory.
Add `-v $HOME/.composer:/.composer`

Warning
-------

Composer is always called with "--ansi", and with "--ignore-platform-reqs" when update/install commands
are detected

Build
-----

```sh
docker build -t iamluc/sf-composer .
```
