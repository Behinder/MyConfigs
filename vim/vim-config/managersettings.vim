fun ActivateAddons()
          set runtimepath+=~/vimwtyczki/vim-addon-manager
          try
            call scriptmanager#Activate(['pluginA', 'pluginB'])
          catch /.*/
            echoe v:exception
          endtry
 endf
 call ActivateAddons()
        " experimental: run after gui has been started [3]
        " option1:  au VimEnter * call Activate()
        " option2:  au GUIEnter * call Activate()
        " See BUGS sections below [*]
