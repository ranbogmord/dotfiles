execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

"autocmd vimenter * NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1


map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>
map <C-t> :tabnew<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap { {}<Esc>i
inoremap <TAB> <C-y>,

set number

"colors
colorscheme neonwave
set background=dark
"highlight Normal ctermfg=grey ctermbg=black
"highlight LineNr ctermfg=white
"highlight Visual ctermfg=black ctermbg=white


"vdebug path mappings
let g:vdebug_options = {
\	"path_maps": { 
\		"/site": "/www/provideit/radiator/midman/site",
\		"/aggregated-zf": "/www/provideit/radiator/midman/aggregated-zf"		
\	}
\}
let g:vdebug_options["break_on_open"]=0
let g:vdebug_options['continuous_mode'] = 1

let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

