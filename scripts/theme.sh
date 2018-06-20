#!/bin/bash
wal -n -i "$@"
feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
