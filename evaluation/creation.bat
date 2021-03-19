REM Importe un fichier CSV dans la base
@echo off
cls

REM Variables
SET EXE_MYSQL="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"

SET USER=root
SET PASSWORD=cci18271970M
SET BASE_DE_DONNEES=library

REM Exécution
echo création de %BASE_DE_DONNEES%
%EXE_MYSQL% --user=%USER% --password=%PASSWORD% %BASE_DE_DONNEES% --execute "CREATE DATABASE IF NOT EXISTS %BASE_DE_DONNEES%"
%EXE_MYSQL% --user=%USER% --password=%PASSWORD% %BASE_DE_DONNEES% < library.sql