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
* [Fugitive-Github](https://github.com/tpope/vim-fugitive): integración de Github en Fugitive.
* [Fugitive-Gitlab](https://github.com/shumphrey/fugitive-gitlab.vim): integración de Gitlab en Fugitive.
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


## Comandos y atajos de teclado

**\<leader>**: la tecla que actúa como líder es la coma `,`.


### Fugitive

| Comando | Atajo | Descripción |
| --- | :---: | --- |
| `:Gbrowse` | | Abre el archivo actual en un navegador usando github o gitlab |
| `:Gblame` | | Muestra quién ha modificado cada línea del archivo, el commit y la fecha |


### NERDTree

| Comando | Atajo | Descripción |
| --- | :---: | --- |
| `:NERDTreeToggle` | `Ctrl + e` | muestra u oculta el explorador de archivos |

Comandos qué sólo funcionan dentro del explorador:

| Atajo | Descripción |
| :---: | --- |
| `o` | Abre el archivo en la ventana actual |
| `t` | Abre el archivo en una nueva pestaña y se va a ella |
| `T` | Abre el archivo en una nueva pestaña |
| `i` | Abre el archivo haciendo split |
| `s` | Abre el archivo haciendo vsplit |

NERDTree tiene muchos más atajos, [aquí](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt#L220)
tienes la documentación completa.


### Syntastic

| Comando | Atajo | Descripción |
| --- | :---: | --- |
| `:Errors` | `<leader>e` | Muestra los errores detallados para el buffer actual |


## Consejos

### Buscar y reemplazar

* `:s/<buscar>/<reemplazar>/<modificadores>` busca y reemplaza en la línea actual.
* `:%s/<buscar>/<reemplazar>/<modificadores>` busca y reemplaza en todo el buffer.

Los modificadores pueden ser:

* `g` para buscar todas las ocurrencias. Si no se usa sólo se busca la primera.
* `i` para indicar que es case-insensitive.
* `c` para pedir confirmación antes de reemplazar.

Para más información consultar [este enlace](http://vim.wikia.com/wiki/Search_and_replace).


## Licencia

Copyright (c) 2017 Javier Aranda - Publicado bajo una licencia [MIT](LICENSE).
