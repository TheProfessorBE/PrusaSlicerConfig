echo %DATE%
echo %TIME%
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%


set a = Autocommit

set msg=%a% and %datetime%

echo %msg%

git pull
git add *
git commit -m %msg%
git push

