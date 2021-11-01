#!/usr/bin/env bash

#
# Install global Node.js packages/tools.
#

package_names=(
  terminalizer
)

for package_name in "${package_names[@]}"; do
  if [ -z "$package_list" ]; then
    package_list="$package_name"
  else
    package_list="$package_list $package_name"
  fi
done

eval "npm install -g $package_list"
