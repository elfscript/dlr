#!/bin/bash
# not work in win2019-score, git-bash ?

echo "my dotnet docker"
winpty docker run -it --rm  --name mydot \
	--user Administrator \
	-v "$(pwd)":"/c/mnt/work"  -w "/c/mnt/work" \
        -e "DOTNET_CLI_TELEMETRY_OPTOUT=1" \
	mcr.microsoft.com/dotnet/core/sdk:3.0 \
	cmd
	#       /mnt/work/add_libunwind.sh && /bin/bash
	#       /mnt/work/adduser1000.sh && /bin/bash
	#       /bin/bash -c '/mnt/work/adduser1000.sh; /bin/bash'
