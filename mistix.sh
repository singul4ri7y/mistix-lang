#!/bin/env sh

# Check OS bit type
arch=$(uname -m)

if [[ $arch == "x86_64" ]]; then
    interpreter="bin/linux/promit_x64"
elif [[ $arch == "i686" ]]; then
    interpreter="bin/linux/promit_x86"
fi

# Check if the interpreter file exists
if [[ ! -f "$interpreter" ]]; then
    echo "Error: Promit interpreter not found! Exiting..."
    exit 1
fi

# Run the Bootstrap.promit script
"$interpreter" "Bootstrap.promit" $@

# Handle potential errors
if [[ $? -ne 0 ]]; then
    exit 1
fi
