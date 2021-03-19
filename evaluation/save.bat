REM Sauvegarde de la base de données
@echo off
cls

REM Variables
SET EXE_MYSQL="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump"

SET USER=root
SET PASSWORD=cci18271970M
SET BASE_DE_DONNEES=library

SET SAVE_SQL=sauvegarde.sql

REM Exécution
echo Fichier sauvegarder dans %SAVE_SQL%
%EXE_MYSQL% --user=%USER% --password=%PASSWORD% %BASE_DE_DONNEES% --complete-insert --result-file=%SAVE_SQL%


