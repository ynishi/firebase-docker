#!/bin/bash

set -eux

if [ "$1" = "firebase" ]; then
  if [ "$#" -ge "2" ]; then
    case "$2" in
      login ) exec "$@" --no-localhost ;;
      serve ) exec "$@" --host 0.0.0.0 ;;
    esac
  fi
fi
exec "$@"
	
