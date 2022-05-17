# DrupalPod with Pantheon

## Setup 

1. Add all the files in this repo to your existing project (make sure all the script files in `./gitpod/` directory are executable)
    ```
    chmod +x .gitpod/*
    ```

1. Generate ssh-key in Gitpod
    ```
    ssh-keygen -b 4096
    ```

1. In Gitpod terminal, run `gp env "PANTHEON_SSH_KEY=$(cat ~/.ssh/id_rsa)"`
    <br>
    This will add environment variable scoped to this project. 

1. _Optional_ - use the same `PANTHEON_SSH_KEY` in all your projects:
    1. Edit `PANTHEON_SSH_KEY` in https://gitpod.io/variables
    1. Update the scope to `*/*`.

1. Add the content of `~/.ssh/id_rsa.pub` to Pantheon
    <br>
    https://pantheon.io/docs/ssh-keys#add-your-ssh-key-to-pantheon


1. Generate Terminus Token
    <br>
    https://pantheon.io/docs/machine-tokens#create-a-machine-token

1. Add Terminus token you generated to Gitpod as a new environment variable `PROJECT_TERMINUS_TOKEN` (https://gitpod.io/variables)

1. Update `.ddev/config.yaml` to the correct project name
    ```
    name: project_name
    ```

1. Update line 43 in `.ddev/providers/pantheon.yaml`
    ```
    project: project_name.pantheon_environment_name
    ```

1. _**Recommended**_:
<br>To speed up the process, enable Prebuilds by follow the instructions @ https://www.gitpod.io/docs/prebuilds#enable-prebuilt-workspaces
