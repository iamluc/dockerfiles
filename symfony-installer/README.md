About
-----

Small symfony-installer image based on Alpine linux (~17 Mo)

Build
-----

```sh
docker build -t iamluc/sf-installer .
```

Usage
-----

```sh
docker run --rm -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/sf-installer
```

Tips
----

Create an alias

```sh
alias symfony="docker run --rm -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/sf-installer"
```
