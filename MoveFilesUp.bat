@ECHO OFF
FOR /D %%G in (*) DO (
    CD "%CD%\%%G"
    FOR /D %%E in (*) DO (
        CD "%%E"
        MOVE /Y * "%CD%\%%G" 2>NUL
    )
)
PAUSE
EXIT /B
