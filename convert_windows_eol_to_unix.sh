#! /bin/sh

# Recursively traverses the directory the script is located in. 
# Replaces windows EOL with unix.

# Consider adjusting git configs to better handle line endings if
# this is a recurring issue.
# https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings

for i in *; do
	if [[ -f $i ]]; then
		sed -i 's/\r$//' $i
	else   
		echo "skipping '$i' as it is not a file"
	fi
done
