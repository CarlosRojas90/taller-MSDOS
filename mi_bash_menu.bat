@echo off
rem Mini Menú Interactivo
:inicio
echo ==================================
echo      Bienvenido a mi Menu
echo ==================================
echo 1. Abrir Microsoft Word
echo 2. Abrir Microsoft Excel
echo 3. Abrir Página de la Universidad Javeriana Cali
echo 4. Abrir Página Favorita
echo 5. Reproducir Video Musical Favorito 1
echo 6. Reproducir Video Musical Favorito 2
echo 7. Bloquear la pantalla
echo 8. Salir
echo ==================================
set /p opcion=Elige una opcion (1-7):

if %opcion%==1 goto abrirWord
if %opcion%==2 goto abrirExcel
if %opcion%==3 goto abrirJaveriana
if %opcion%==4 goto abrirFavorito
if %opcion%==5 goto videoFavorito1
if %opcion%==6 goto videoFavorito2
if %opcion%==7 goto bloquearPantalla
if %opcion%==8 goto salir

echo Opción inválida, intenta de nuevo.
goto inicio

:abrirWord
echo Abriendo Microsoft Word...
start winword
goto inicio

:abrirExcel
echo Abriendo Microsoft Excel...
start excel
goto inicio

:abrirJaveriana
echo Abriendo la página de la Universidad Javeriana Cali...
start https://www.javerianacali.edu.co
goto inicio

:abrirFavorito
set /p pagina=Introduce tu pagina web favorita 
set pagina=%pagina: =+%
start https://www.google.com/search?q="%pagina%"
goto inicio

:videoFavorito1
echo Reproduciendo Video Musical Favorito 1...
start https://www.youtube.com/watch?v=TGgcC5xg9YI&list=RDTGgcC5xg9YI&start_radio=1
goto inicio

:videoFavorito2
echo Reproduciendo Video Musical Favorito 2...
start https://www.youtube.com/watch?v=khB6DUHpR4o&list=RDkhB6DUHpR4o&start_radio=1
goto inicio

:bloquearPantalla
echo Bloqueando la pantalla...
rundll32.exe user32.dll,LockWorkStation
goto inicio

:salir
echo Gracias por usar Mi Bash Menu. Saliendo...
goto :eof