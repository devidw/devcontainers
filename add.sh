# exit if first arg not set
[ -z "$1" ] && exit 1

# get first numeric arg and store in folder var
folder=$1

# create local .devcontainer folder
mkdir .devcontainer

# create array of Dockerfile, devcontainer.json, and docker-compose.yml
files=(Dockerfile devcontainer.json docker-compose.yml)

# download all files in array
# https://raw.githubusercontent.com/devidw/devcontainers/master/$folder/.devcontainer/
for file in "${files[@]}"
do
    curl -o .devcontainer/$file https://raw.githubusercontent.com/devidw/devcontainers/master/$folder/.devcontainer/$file
done

# delte those files with "404: Not Found" content
for file in "${files[@]}"
do
    if grep -q "404: Not Found" .devcontainer/$file; then
        rm .devcontainer/$file
    fi
done