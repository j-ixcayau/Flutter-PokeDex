# PokeDex

Pokedex es un app desarrollada con Flutter que utiliza el api [pokedex](https://pokeapi.co/docs/v2) y Firebase para autenticación

## Compilación

Para el correcto funcionamiento se recomienda usar siguientes versiones

-   Android Studio Dolphin | 2021.3.1 Patch 1
-   Xcode 14.2
-   VsCode 1.74.2
-   Flutter 3.3.10

Para Android y iOS no se debe hacer ninguna configuración para compilar

-   En android se puede utilizar un dispositivo físico o emulador, el app tiene una keystore configurada por lo que no hay problema con el auth de google. En la ruta '/apk/app-release.apk' se tiene un apk con la que se pueden hacer pruebas
-   En iOS por el costo de licencias, únicamente se puede compilar con emuladores

## Autenticación

Métodos de inicio de sesión:

-   Google: Se puede con cualquier cuenta en el dispositivo
-   Correo y contraseña: En el mismo app se puede registrar e iniciar sesión con correo y contraseña
