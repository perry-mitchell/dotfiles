#!/bin/bash

# Current script dir
BSRC="$( readlink -f "${BASH_SOURCE[0]}" )"
DIR_RAW="$( cd "$( dirname "$BSRC" )" && pwd )"
DIR="$( realpath $DIR_RAW )"

# Execute helpers
for filename in $DIR/helpers/*.sh; do
  source $filename
done

# Execute components
for filename in $DIR/bash_profile/*.sh; do
  source $filename
done
