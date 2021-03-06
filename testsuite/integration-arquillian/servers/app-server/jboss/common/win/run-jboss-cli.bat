set "NOPAUSE=true"
set cli_file=%2
set working_dir=%3

cd %working_dir%

if "%4"=="-Dserver.config" (
    set server_config=%5
) else (
    set server_config=standalone.xml
)

if "%4"=="-Djboss.server.config.dir" (
    jboss-cli.bat --file=%cli_file% -Dserver.config=%server_config% -Djboss.server.config.dir=%5
) else (
    jboss-cli.bat --file=%cli_file% -Dserver.config=%server_config%
)
