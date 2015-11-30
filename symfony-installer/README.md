About
-----

Small symfony-installer image based on Alpine linux (~17 Mo)

Usage
-----

```sh
docker run --rm -it -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/sf-installer
```

Tips
----

Create an alias

```sh
alias symfony="docker run --rm -it -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/sf-installer"
```

Build
-----

```sh
docker build -t iamluc/sf-installer .
```
