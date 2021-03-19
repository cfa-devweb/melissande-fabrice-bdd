REM Importe un fichier CSV dans la base
@echo off
cls

REM Variables
SET EXE_MYSQL="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"

SET USER=root
SET PASSWORD=cci18271970M
SET BASE_DE_DONNEES=library
SET TABLE=books

SET FICHIER_CSV=books.csv

REM Exécution
IF EXIST %FICHIER_CSV% (
    echo Insertion %FICHIER_CSV% dans la table %TABLE%
    %EXE_MYSQL% --local-infile=1 --user=%USER% --password=%PASSWORD% %BASE_DE_DONNEES% --execute "LOAD DATA LOCAL INFILE '%FICHIER_CSV%' INTO TABLE %TABLE% fields terminated by ',' enclosed by '"' ignore 1 lines (@title, @author, @genre, @height, @publisher) SET title = @title, author = @author, genre = @genre, height = @height, publisher = @publisher;"
    ) ELSE (
    echo Fichier inaccessible !
    )
