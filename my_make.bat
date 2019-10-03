REM my_make.bat
REM dotnet msbuild  Build.proj /nologo /bl:build-Build-Release.binlog /m /p:Co    nfiguration=Release /p:Platform=Any CPU /t:Build /verbosity:minimal

SET target="Build"
SET configuration="Release"
ECHO %target%, %configuration%

dotnet msbuild Build.proj /m /t:%target% /p:Configuration=%configuration%           /verbosity:minimal /nologo /p:Platform="Any CPU" /bl:build-%target%-%configuration%.binlog

