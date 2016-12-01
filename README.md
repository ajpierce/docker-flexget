[![](https://images.microbadger.com/badges/image/ajpierce/docker-flexget.svg)](https://microbadger.com/images/ajpierce/docker-flexget "Get your own image badge on microbadger.com")

# Docker-FlexGet
FlexGet based on a slim [Alpine Linux](https://alpinelinux.org/) container.

This docker image includes the `transmissionrpc` library, so consider running a
[Transmission Docker Container](https://github.com/linuxserver/docker-transmission)
alongside FlexGet for automatically starting downloads.

## Usage
This container expects you to mount a `/config` volume containing your
`config.yml` and the sqlite database. The database will be created on first run.

```
docker create \
  --name=flexget \
  -v /path/to/config:/config \
  ajpierce/docker-flexget
```

## Config
FlexGet runs in daemon mode, so you must specify in your config.yml the times at
which you wish your jobs to run.

If you do not specify times for jobs to run in the config through the [Scheduler Plugin](http://flexget.com/Plugins/Daemon/scheduler),
the daemon will default to running jobs hourly.
