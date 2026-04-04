@echo off
REM Caminho do seu projeto Jekyll
SET PROJECT_DIR=D:\Pessoal\Documentos\GitHub\favpn.github.io\base

REM Caminho destino (pode ser outro branch, servidor local, etc.)
SET DEST_DIR=D:\Pessoal\Documentos\GitHub\favpn.github.io\

echo Compilando Jekyll...
cd %PROJECT_DIR%
REM Se usar Bundler
call jekyll build --incremental
REM Se não usar Bundler, use: jekyll build

echo Copiando _site para destino...
xcopy /E /Y /I "%PROJECT_DIR%\_site" "%DEST_DIR%"

echo Concluído!
pause