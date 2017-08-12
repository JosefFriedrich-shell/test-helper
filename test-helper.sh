#! /bin/sh

_set_mocking_path() {
  PATH="$(pwd)/../bin/$1:$PATH"
}

_source_until_separator() {
  local TMP_FILE=$(mktemp)
  local SEPARATOR='### This SEPARATOR is needed for the tests. Do not remove it! ##########'
  sed "/$SEPARATOR/Q" "$1" > "$TMP_FILE"
  . "$TMP_FILE"
}
