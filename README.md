## Highlighting for Mcproxy configuration files
This vim plugin highlights [Mcproxy](https://github.com/mcproxy/mcproxy) configuration files.


## Install
Install this plugin with your favorite plugin-manager or manual with the following command:
    
    git clone https://github.com/mcproxy/vim-mcproxy_conf_highlighting  ~/.vim/vim-mcproxy_conf_highlighting


## Filetype Detection
*   It must be a **.conf** file
*   The file detection script searches for this pattern in the current file:
    
        'pinstance.*==>'

## Highlighting Sugar
Highlighting of meta description in comments with the following pattern:

    # ~Description: very important text
    # ~asdf: other important text
    # ~foo: bar

## Interaction with over Vim-Plugins
*   [Nerdcommenter](https://github.com/scrooloose/nerdcommenter):
    Add this code snippet to your vimrc file:

        let g:NERDCustomDelimiters = {
            \ 'mcproxy': { 'left': '#' }
            \}


