echo %DATE%
echo %TIME%
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%


set msg = Autocommit and %datetime%

git pull
git add *
git commit -m msg
git push

