# get first numeric arg and store in folder var
folder=$1

# create local .devcontainer folder
mkdir .devcontainer

# clone
# https://raw.githubusercontent.com/devidw/devcontainers/master/$folder/.devcontainer/Dockerfile
# and same for devcontainer.json
curl -o .devcontainer/Dockerfile https://raw.githubusercontent.com/devidw/devcontainers/master/$folder/.devcontainer/Dockerfile
curl -o .devcontainer/devcontainer.json https://raw.githubusercontent.com/devidw/devcontainers/master/$folder/.devcontainer/devcontainer.json