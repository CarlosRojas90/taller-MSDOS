@echo off
rem Mini Menú Interactivo
:inicio
echo ==================================
echo      Bienvenido al Mini Menú
echo ==================================
echo 1. Ver la Fecha y Hora Actual
echo 2. Crear una Carpeta en el Escritorio
echo 3. Abrir la Calculadora
echo 4. Buscar en Google
echo 5. Salir
echo ==================================
set /p opcion=Elige una opcion (1-5): 

rem Ejecutar la opción seleccionada
if %opcion%==1 goto fechaHora
if %opcion%==2 goto crearCarpeta
if %opcion%==3 goto abrirCalculadora
if %opcion%==4 goto buscarGoogle
if %opcion%==5 goto salir

rem Manejar opciones inválidas
echo Opción inválida, intenta de nuevo.
goto inicio

:fechaHora
echo Mostrando la fecha y hora actual...
echo Fecha: %date%
echo Hora: %time%
goto inicio

:crearCarpeta
set /p nombreCarpeta=Introduce el nombre de la carpeta: 
mkdir %USERPROFILE%\Desktop\%nombreCarpeta%
echo Carpeta '%nombreCarpeta%' creada en el Escritorio.
goto inicio

:abrirCalculadora
echo Abriendo la Calculadora...
start calc
goto inicio

:buscarGoogle
set /p busqueda=Escribe lo que quieres buscar en Google: 
set busqueda=%busqueda: =+%
start https://www.google.com/search?q="%busqueda%"
goto inicio

:salir
echo Has decidido salir del menú. Gracias por usar el Mini Menú.
goto :eof