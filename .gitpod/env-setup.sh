#!/usr/bin/env bash
if [ -n "$DEBUG_SCRIPTS" ]; then
    set -x
fi

if [ -n "$GITPOD_HEADLESS" ]; then
    # Fetch PANTHEON_SSH_KEY value during `init`
    eval "$(gp env -e)" > /dev/null
fi

# Setting SSH key from environment variable
mkdir -p ~/.ssh
printenv PANTHEON_SSH_KEY > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
