# DOT - A Dockerd Tool for WSL (Windows Subsystem for Linux)

In WSL, there is no systemd or other init system. The docker daemon `dockerd` has to be launch manually on the correct IP address. This tools helps you do just that.

## Setup

### Install

```
sudo make
```

### Uninstall

```
sudo make clean
```

## Usage

### Start `dockerd`
```
sudo dot start
```

If you are using this thru wsl.exe, you will want to invoke it like this:

```
wls -d ubuntu -- sudo nohup dot start
```

This will ensure that the dockerd process survives the closure of the terminal invoked by wsl.exe

### Stop `dockerd`
```
sudo dot stop
```

### Get the exact command to set the `DOCKER_HOST` env variable in the terminal (so that you can just run the `docker` command without the H option)
```
dot envvar
```

### See `dockerd` status
```
dot status
```

### See `dockerd` logs
```
dot logs
```

## Example Usage

```
sudo make
sudo dot start
dot envvar
```

You can now use `docker ps` to see if everything is ok. Note that `dockerd` takes a few second to start. You can check the status using `dot status` and look at the logs with `sudo dot logs`.