#!/usr/bin/env bash

set -e

# OSX GUI apps do not pick up environment variables the same way as Terminal apps and there are no easy solutions,
# especially as Apple changes the GUI app behavior every release (see https://stackoverflow.com/q/135688/483528). As a
# workaround to allow GitHub Desktop to work, add this (hopefully harmless) setting here.

export PATH=$PATH:/usr/local/bin

FORBIDDEN="[iv]\d{6}"


exit_status=0
 for i in $(git diff --cached --name-only --relative)
  do
    # the trick is here...use `git show :file` to output what is staged
    # test it against each of the FORBIDDEN strings ($j)
    if grep -c -q -E "$FORBIDDEN" -i "$i"; then
        echo "File contains vKey: $i"
        exit_status=1
    fi
  done

exit $exit_status
