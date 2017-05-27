# dotvim

Mi configuración personal de Vim. Usa [pathogen](https://github.com/tpope/vim-pathogen) y
submodulos de Git para gestionar los plugins.


## Plugins instalados

### Temas

* [OneDark](https://github.com/joshdick/onedark.vim): tema de color de Atom portado a Vim.

### Linters

* [Syntastic](https://github.com/scrooloose/syntastic): comprobador de sintaxis.

### Sintaxis

* [CssColor](https://github.com/ap/vim-css-color): mostrar en color las referencias a colores en
    el CSS.
* [Polyglot](https://github.com/sheerun/vim-polyglot): resaltado de sintaxis para multiples tipos.

### Utilidades

* [Autopairs](https://github.com/jiangmiao/auto-pairs): inserta o borra corchetes, paréntesis y
    comillas en pares.
* [CtrlP](https://github.com/ctrlpvim/ctrlp.vim): buscador de archivos.
* [EditorConfig](https://github.com/editorconfig/editorconfig-vim): aplica la configuración del
    archivo `.editorconfig`.
* [Endwise](https://github.com/tpope/vim-endwise): cierre de bloques para Ruby.
* [Fugitive](https://github.com/tpope/vim-fugitive): integración con Git.
* [GitGutter](https://github.com/airblade/vim-gitgutter): mostrar cambios de Git en la columna
    de avisos.
* [IndentLine](https://github.com/Yggdroot/indentLine): muestra el nivel de indentación con líneas
    verticales.
* [LastPlace](): memoriza la posición del cursor al cerrar un archivo para abrirlo en el
    mismo lugar.
* [LightLine](https://github.com/itchyny/lightline.vim): barra de estado configurable.
* [NERDTree](https://github.com/scrooloose/nerdtree): explorador de archivos.
* [NERDTree-Git](https://github.com/Xuyuanp/nerdtree-git-plugin): mostrar cambios de Git en el
    explorador.


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

### Plugins locales

También es posible instalar plugins en el equipo local sin tener que modificar nada en el directorio
`.vim`. Para ello crea el directorio `~/.vim-plugins` y clona dentro los repositorios de los plugins
que quieras instalar de manera local.


## Atajos de teclado

`TODO`: Escribir los atajos de teclado usados por los plugins y los definidos propios.


## Consejos

`TODO`: Escribir tips habituales para futuras referencias


## Licencia

Copyright (c) 2017 Javier Aranda - Publicado bajo una licencia [MIT](LICENSE).
