return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'alker0/chezmoi.vim'
    use 'vim-airline/vim-airline' -- status bar
    use 'vim-airline/vim-airline-themes' -- status bar
    use 'edkolev/tmuxline.vim' -- tmux theme
    use 'chrisbra/csv.vim' -- display CSV
    use 'sjl/gundo.vim' -- undo history
    use 'ervandew/supertab' -- multiple functions for tab key
    use 'tpope/vim-repeat' -- repeat complex actions (make sure it works)
    use 'christoomey/vim-tmux-navigator' -- tmux shortcuts
    use 'tpope/vim-unimpaired' -- miscellaneous paired mappings
    use 'tpope/vim-abolish' -- act on word variants
    use 'christoomey/vim-system-copy' -- use system clipboard
    use 'zhaocai/goldenview.vim' -- split buffers
    use {'liuchengxu/vim-which-key', opt = true, cmd = {'WhichKey', 'WhichKey!'} }
    -- use 'nhooyr/neoman.vim' -- use neovim to read man pages

    -- use 'vim-scripts/a.vim'
    -- use 'vim-jp/vital.vim'
    -- use 'vim-scripts/sudo.vim' -- save as sudo - probably remove
    -- use 'mrtazz/DoxygenToolkit.vim'
    -- use 'Shougo/vimproc.vim', {'do' : 'make'} -- still needed?
    -- use 'vim-scripts/TaskList.vim'

    -- Colorschemes
    -- use 'NLKNguyen/papercolor-theme'
    -- use 'lifepillar/vim-solarized8'
    -- use 'nightsense/seabird'
    -- use 'liuchengxu/space-vim-dark'
    -- use 'joshdick/onedark.vim'
    -- use 'fneu/breezy'
    -- use 'dracula/vim'
    use 'chriskempson/base16-vim'
    -- use 'morhetz/gruvbox'
    -- use 'nanotech/jellybeans.vim'
    -- use 'dikiaap/minimalist'
    -- use 'arcticicestudio/nord-vim'
    -- use 'tomasr/dracula'
    -- use 'rakr/vim-one'
    -- use 'vim-scripts/Color-Sampler-Pack'
    -- use 'thinca/vim-guicolorscheme'

    -- Colorschemes
    use 'chriskempson/base16-vim'

    -- Comments
    use 'scrooloose/nerdcommenter' -- shortcuts to comment out
    use 'tpope/vim-commentary'

    -- Completion
    use 'wellle/tmux-complete.vim'
    use 'Shougo/neoinclude.vim' -- completion engine
    use 'Shougo/neco-syntax' -- vimscript completion
    use 'Shougo/neco-vim' -- vimscript completion

    -- use 'davidhalter/jedi-vim' -- python completion

    -- asyncomplete
    -- use 'prabirshrestha/asyncomplete.vim'
    -- use 'prabirshrestha/asyncomplete-buffer.vim'
    -- use 'prabirshrestha/asyncomplete-file.vim'
    -- use 'prabirshrestha/asyncomplete-necovim.vim'
    -- use 'prabirshrestha/asyncomplete-necosyntax.vim'
    -- use 'yami-beta/asyncomplete-omni.vim'

    -- use 'codota/tabnine'
    -- use 'kitagry/asyncomplete-tabnine.vim', { 'do': './install.sh' }

    -- Coc
    -- use 'neoclide/coc.nvim', {'branch': 'release'}
    -- use 'neoclide/coc-neco'

    -- YouCompleteMe
    -- use 'ycm-core/YouCompleteMe'

    -- ncm2
    use 'ncm2/ncm2' -- completion engine
    use 'roxma/nvim-yarp'

    use 'ncm2/ncm2-bufword'
    use 'ncm2/ncm2-path'
    use 'ncm2/ncm2-github'
    use 'ncm2/ncm2-tmux'
    use 'ncm2/ncm2-tagprefix'
    use 'filipekiss/ncm2-look.vim'
    use 'jsfaint/gen_tags.vim'
    use 'ncm2/ncm2-syntax'
    use 'ncm2/ncm2-neoinclude'
    use 'ncm2/ncm2-ultisnips'
    -- use 'ncm2/ncm2-match-highlight'
    -- use 'ncm2/ncm2-highprio-pop'

    use 'ncm2/ncm2-vim'
    use 'ncm2/ncm2-jedi'
    use 'ncm2/ncm2-racer'
    use 'ncm2/ncm2-pyclang'
    use 'ncm2/ncm2-go'
    use 'liubianshi/ncm-R' -- r completion

    -- LanguageServer
    -- use 'autozimu/LanguageClient-neovim', {
        -- \ 'branch': 'next',
        -- \ 'do': 'bash install.sh',
    -- \ }

    -- use 'MaskRay/ccls' -- C/C++
    -- use 'Pure-D/serve-d' -- D
    -- use 'sourcegraph/go-langserver' -- Go
    -- use 'rust-lang-nursery/rls' -- Rust
    -- use 'hansec/fortran-language-server' -- Fortran

    -- use 'REditorSupport/languageserver' -- R
    -- use 'JuliaEditorSupport/LanguageServer.jl' -- Julia

    -- use 'mads-hartmann/bash-language-server' -- bash
    -- use 'Alloyed/lua-lsp' -- Lua
    -- use 'palantir/python-language-server', {'branch': 'develop'} -- Python
    -- use 'castwide/solargraph' -- Ruby

    -- use 'CXuesong/LanguageServer.NET' -- C#
    -- use 'eclipse/eclipse.jdt.ls' -- Java
    -- use 'snoe/clojure-lsp' -- Clojure
    -- use 'palantir/groovy-language-server', {'branch': 'develop'} -- Groovy
    -- use 'dragos/dragos-vscode-scala'

    -- use 'Microsoft/vscode/tree/master/extensions/json' -- JSON
    -- use 'microclimate-devops/xml-language-server' -- XML
    -- use 'redhat-developer/yaml-language-server' -- YAML

    -- use 'haskell/haskell-ide-engine' -- Haskell
    -- use 'freebroccolo/ocaml-language-server' -- Ocaml

    -- use 'vshaxe/haxe-languageserver' -- Haxe
    -- use 'rlovelett/langserver-swift' -- Swift

    -- use 'georgewfraser/kotlin-language-server' -- Kotlin
    -- use 'scalameta/metals'

    -- use 'natebosch/dart_language_server' -- Dart
    -- use 'sourcegraph/javascript-typescript-langserver' -- Javascript
    -- use 'nwolverson/purescript-language-server' -- Purescript

    -- use 'eclipse/xtext-core'

    -- let g:LanguageClient_serverCommands = {
        -- \ 'r': ['R', '--quiet', '--slave', '-e', 'languageserver::run()'],
        -- \ 'sh': ['bash-language-server', 'start']
        -- \ }

    -- File Management
    use 'scrooloose/nerdtree' -- Open other files
    use 'jistr/vim-nerdtree-tabs' -- Keep nerdtree open in all tabs
    use 'mhinz/vim-startify' -- vim start screen!
    use 'justinmk/vim-dirvish' -- remote file editing
    use 'amiorin/vim-project' -- huh?
    use 'tpope/vim-eunuch' -- POSIX file commands
    use 'Shougo/vimfiler.vim' -- still requires Unite!
    -- use 'eiginn/netrw' -- remote edit
    -- use 'airblade/vim-rooter' -- set root dir correctly

    -- Haskell
    -- use 'dag/vim2hs'
    -- use 'lukerandall/haskellmode-vim'
    -- use 'adinapoli/cumino'
    -- use 'bitc/vim-hdevtools'
    -- use 'eagletmt/ghcmod-vim'
    -- use 'Twinside/vim-haskellFold'
    -- use 'travitch/hasksyn'
    -- use 'eagletmt/neco-ghc'
    -- use 'enomsg/vim-HaskellConcealPlus'

    -- Indent - set up correctly
    use 'michaeljsmith/vim-indent-object'
    use 'nathanaelkane/vim-indent-guides'
    use 'godlygeek/tabular' -- align to specific characters
    use 'tommcdo/vim-lion'

    -- Kana
    use 'kana/vim-smartchr' -- replace characters
    use 'kana/vim-smartinput' -- better version of auto-pair
    use 'kana/vim-niceblock' -- better visual block mode
    use 'kana/vim-fakeclip' -- better clipboard
    use 'kana/vim-submode' -- create submodes
    use 'kana/vim-altercmd' -- alter existing command
    use 'kana/vim-narrow'
    use 'kana/vim-advice' -- alter commands?

    -- LaTeX
    use 'lervag/vimtex' -- LaTeX continuous compile

    -- Markdown
    --{{ if eq .chezmoi.os -- darwin--  }}
    --function! BuildComposer(info)
      --if a:info.status != 'unchanged' || a:info.force
          --!cargo build --release --locked
    --endfunction
    --use 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
    --{{ end }}
    -- use 'suan/vim-instant-markdown' -- Markdown contiuous compile

    -- Movement
    use 'easymotion/vim-easymotion' -- use letters to jump to words
    use 'terryma/vim-multiple-cursors' -- sublime text multiple cursor
    use 'kana/vim-smartword' -- better word movement
    use 'kana/vim-better-tag-jump' -- tag jump
    use 'kana/vim-exjumplist' -- jumplist motions

    -- Operators
    use 'kana/vim-operator-user' -- define own operator
    use 'kana/vim-operator-replace' -- replace existing operator
    use 'kana/vim-operator-siege'

    -- Python
    use 'fs111/pydoc.vim' -- python documentation?
    use 'alfredodeza/pytest.vim' -- test python code
    -- python-mode
    -- use 'ivanov/vim-ipython' -- python REPL

    -- REPL
    use { 'jalvesaq/Nvim-R', branch = 'stable' } -- R plugin
    use 'jalvesaq/vimcmdline' -- Generic REPL
    use 'Shougo/deol.nvim' -- Shell plugin
    use 'kassio/neoterm' -- Term plugin
    -- use 'jpalardy/vim-slime' -- probably redundant with above

    -- Search - all hail FZF
    --use 'junegunn/fzf', { 'dir': '$HOME/.fzf', 'do': './install --all' } -- search with fzf
    use 'junegunn/fzf.vim' -- search commands
    use 'rking/ag.vim' -- keep around
    use 'Shougo/denite.nvim' -- more interfaces when fzf not available
    use 'Shougo/unite.vim' -- replace with dark version - replace with FZF
    use 'tacahiroy/ctrlp-funky' -- navigate to functions - replace with FZF
    use 'kien/ctrlp.vim' -- Launch recently used files - FZF
    use 'mileszs/ack.vim'
    -- use 'wincent/Command-T'

    -- Snippets
    use 'SirVer/ultisnips' -- snippets engine - check others
    use 'honza/vim-snippets' -- snippets definition

    -- Surround
    use 'tpope/vim-endwise' -- add end of conditional statements, loops, etc.
    use 'tpope/vim-surround' -- to add quotes etc. around word
    use 'wellle/targets.vim' -- more text targets (i.e. parentheses)
    -- use 'jiangmiao/auto-pairs' -- add parentheses

    -- Syntax checking
    use 'scrooloose/syntastic' -- check syntax
    -- use 'reinh/vim-makegreen'

    -- Tabs/buffers - slim down!
    use 'szw/vim-ctrlspace' -- navigate tabs - replace with FZF?
    -- use 'jlanzarotta/bufexplorer'
    -- use 'fholgado/minibufexpl.vim'

    -- Tags - redundant?
    use 'majutsushi/tagbar' -- show tags in navigable bar
    use 'vim-scripts/taglist.vim' -- show tags in bar - prob. redundant

    -- Text objects
    use 'kana/vim-textobj-user' -- whole buffer text object
    use 'kana/vim-textobj-entire' -- whole buffer text object
    use 'kana/vim-textobj-function' -- function text object
    use 'kana/vim-textobj-line' -- line text object
    use 'kana/vim-textobj-help' -- help text object
    use 'kana/vim-textobj-syntax' -- syntax text object
    use 'kana/vim-textobj-lastpat' -- lastpattern text object
    use 'kana/vim-textobj-indent' -- indent text object
    use 'kana/vim-textobj-fold' -- fold text object

    -- VCS
    use 'tpope/vim-fugitive' -- git plugin
    -- use 'vim-scripts/vcscommand.vim' -- is this needed?

    use 'ryanoasis/vim-devicons' -- unicode icons everywhere
end)
