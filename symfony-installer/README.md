About
-----
Small symfony-installer image based on Alpine linux (~17 Mo)

Build
-----

docker build -t iamluc/sf-installer .

Usage
-----

```sh
docker run -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/sf-installer
```

Tips
----

Create an alias

```
alias symfony="docker run -v $HOME:$HOME -w $PWD -u `id -u`:`id -g` iamluc/sf-installer"
```
