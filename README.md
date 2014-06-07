## Highlighting for Mcproxy configuration files
This vim plugin highlights [Mcproxy](https://github.com/mcproxy/mcproxy) configuration files.


## Install
Install this plugin with your favorite plugin-manager or manual with the following command:
    
    git clone https://github.com/mcproxy/vim-mcproxy_conf_highlighting  ~/.vim/vim-mcproxy_conf_highlighting


## Filetype Detection
*   Must be a **.conf** file
*   The file detection script looks for the pattern:
    
        'pinstance.*==>'


## Highlighting Sugar
Highlighting of meta description in comments with the following pattern:

    # ~Description: very important text
    # ~asdf: important text



