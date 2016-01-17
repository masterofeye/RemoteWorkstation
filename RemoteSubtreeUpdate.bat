@echo off

echo             Push or Pull !?
echo             =============
echo.
echo   [1] Pull
echo   [2] Push

echo.

set bsw=0
set /p bsw="Bitte Auswahl eingeben: "


echo             Choose a project
echo             =============
echo.
echo   [1] RemoteView
echo   [2] RemoteUtil
echo   [3] RemoteStreamServer
echo   [4] RemoteStreamClient
echo   [5] RemoteService
echo   [6] RemoteDoc
echo   [7] RemoteApp
echo.

set asw=0
set /p asw="Bitte Auswahl eingeben: "

if %asw%==1 if %bsw%==1 goto RemoteViewPull
if %asw%==1 if %bsw%==2 goto RemoteViewPush
if %asw%==2 if %bsw%==1 goto RemoteUtilPull
if %asw%==2 if %bsw%==2 goto RemoteUtilPush
if %asw%==3 if %bsw%==1 goto RemoteStreamServerPull
if %asw%==3 if %bsw%==2 goto RemoteStreamServerPush
if %asw%==4 if %bsw%==1 goto RemoteStreamClientPull
if %asw%==4 if %bsw%==2 goto RemoteStreamClientPush
if %asw%==5 if %bsw%==1 goto RemoteServicePull
if %asw%==5 if %bsw%==2 goto RemoteServicePush
if %asw%==6 if %bsw%==1 goto RemoteDocPull
if %asw%==6 if %bsw%==2 goto RemoteDocPush
if %asw%==7 if %bsw%==1 goto RemoteAppPull
if %asw%==7 if %bsw%==2 goto RemoteAppPush
goto END


:RemoteViewPush
echo push RemoteView to server
sh --login -i -c "git subtree push --prefix=RemoteView/ git@github.com:masterofeye/RemoteView.git master"
goto END

:RemoteViewPull
echo pull RemoteView from server
sh --login -i -c "git pull -s subtree git@github.com:masterofeye/RemoteView.git master"
goto END


:RemoteUtilPush
echo push RemoteUtil to server
sh --login -i -c "git subtree push --prefix=RemoteUtil/ git@github.com:masterofeye/RemoteUtil.git master"
goto END

:RemoteUtilPull
echo pull RemoteUtil from server
sh --login -i -c "git pull -s subtree git@github.com:masterofeye/RemoteUtil.git master"
goto END


:RemoteStreamServerPush
echo push RemoteStreamServer to server
sh --login -i -c "git subtree push --prefix=RemoteStreamServer/ git@github.com:masterofeye/RemoteStreamServer.git master"
goto END

:RemoteStreamServerPull
echo pull RemoteStreamServer from server
sh --login -i -c "git pull -s subtree git@github.com:masterofeye/RemoteStreamServer.git master"
goto END


:RemoteStreamClientPush
echo push RemoteStreamClient to server
sh --login -i -c "git subtree push --prefix=RemoteStreamClient/ git@github.com:masterofeye/RemoteStreamClient.git master"
goto END

:RemoteStreamClientPull
echo pull RemoteStreamClient from server
sh --login -i -c "git pull -s subtree git@github.com:masterofeye/RemoteStreamClient.git master"
goto END


:RemoteServicePush
echo push RemoteService to server
sh --login -i -c "git subtree push --prefix=RemoteService/ git@github.com:masterofeye/RemoteService.git master"
goto END

:RemoteServicePull
echo pull RemoteService from server
sh --login -i -c "git pull -s subtree git@github.com:masterofeye/RemoteService.git master"
goto END


:RemoteDocPush
echo push RemoteDoc to server
sh --login -i -c "git subtree push --prefix=RemoteDoc/ git@github.com:masterofeye/RemoteDoc.git master"
goto END

:RemoteDocPull
echo pull RemoteDoc from server
sh --login -i -c "git pull -s subtree git@github.com:masterofeye/RemoteDoc.git master"
goto END


:RemoteAppPush
echo push RemoteApp to server
sh --login -i -c "git subtree push --prefix=RemoteApp/ git@github.com:masterofeye/RemoteApp.git master"
goto END

:RemoteAppPull
echo pull RemoteApp from server
sh --login -i -c "git pull -s subtree git@github.com:masterofeye/RemoteApp.git master"
goto END

:END
pause



