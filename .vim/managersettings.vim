fun! SetupVAM()
          set runtimepath+=~/MyConfigs/vimwtyczki/vim-addon-manager
          " commenting try .. endtry because trace is lost if you use it.
          " There should be no exception anyway
          " try
           call vam#ActivateAddons(['EasyMotion','vim-addon-mw-utils','tlib','snipmate-snippets','github-garbas-vim-snipmate','Tagbar','ctrlp'])
          " catch /.*/
          "  echoe v:exception
          " endtry
        endf
        call SetupVAM()
        " experimental: run after gui has been started [3]
        " option1:  au VimEnter * call SetupVAM()
        " option2:  au GUIEnter * call SetupVAM()
        " See BUGS sections below [*]

