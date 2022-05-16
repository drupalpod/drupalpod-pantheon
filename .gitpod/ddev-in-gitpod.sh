#!/usr/bin/env bash
if [ -n "$DEBUG_SCRIPTS" ] || [ -n "$GITPOD_HEADLESS" ]; then
    set -x
fi

# Misc housekeeping before start
ddev config global --instrumentation-opt-in=true --web-environment="PROJECT_TERMINUS_TOKEN=$PROJECT_TERMINUS_TOKEN"
