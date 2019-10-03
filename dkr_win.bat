REM win batch

echo "mydot: my dotnet sdk container"
SET cwd=%cd%
ECHO %cwd%

docker run -it --rm ^
	--user="Administrator" ^
	--name mydot ^
	-v %cwd%:"C:\mnt\work" ^
	-w "C:\mnt\work" ^
	-e "DOTNET_CLI_TELEMETRY_OPTOUT=1" ^
	mcr.microsoft.com/dotnet/core/sdk:3.0 ^
	cmd

REM	-w /c/mnt/work ^
