### About

Small composer image based on Alpine linux (~21 Mo)

### Usage

```console
$ docker run --rm -it -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/composer
```

### Tips

Create an alias

```console
$ alias composer="docker run --rm -it -v \$HOME:\$HOME -w \$PWD -u \`id -u\`:\`id -g\` iamluc/composer"
```

Share your composer directory.
Add `-v $HOME/.composer:/.composer`

### Warning

Composer is always called with "--ansi", and with "--ignore-platform-reqs" when update/install commands
are detected

### Build

```console
$ docker build -t iamluc/sf-composer .
```
