# dotvim

Mi configuración personal de Vim. Usa [pathogen](https://github.com/tpope/vim-pathogen) y
submodulos de Git para gestionar los plugins.


## Plugins instalados

`TODO`: Escribir listado de plugins.


## Instalación

```
$ git clone https://github.com/javierav/dotvim.git .vim
$ cd .vim
$ git submodule update --init
```


## Actualizaciones

### Actualizar el repositorio

Para usar la última versión de este repositorio y la configuración que contiene, basta con ejecutar:

```
$ cd .vim
$ git pull origin master
$ git submodule update --init
```

### Actualizar los plugins

Si queremos actualizar los plugins a la última versión publicada tenemos disponible el siguiente
script:

```
$ ./update-plugins.sh
```


## Configuración

Toda la configuración por defecto viene dada en el archivo [*vimrc*](vimrc) de este repositorio.
Si se quiere realizar cualquier cambio, la manera recomendada (siempre que sea posible) es usar
alguno de los siguientes archivos (por defecto no están creados):

* `~/.vimrc.before`: se ejecuta al comienzo de la configuración del archivo `vimrc`.
* `~/.vimrc.after`: se ejecuta al final de la configuración del archivo `vimrc`.

Lo más habitual es que se use el archivo `~/.vimrc.after` para sobreescribir configuración o para
añadir nueva.

> *Nota* No es obligatorio crear los archivos. El script comprueba si existen antes de cargarlos.


## Atajos de teclado

`TODO`: Escribir los atajos de teclado usados por los plugins y los definidos propios.


## Licencia

Copyright (c) 2017 Javier Aranda - Publicado bajo una licencia [MIT](LICENSE).
