#!/usr/bin/env bash
while sleep 3600; do
  jcmd $(pidof java) GC.run
done
