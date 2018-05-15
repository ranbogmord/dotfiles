execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

au FileType javascript setl sw=2 sts=2 et
au FileType python setl sw=4 sts=4 et
au FileType json setl sw=2 sts=2 et
au FileType php setl sw=4 sts=2 et


"autocmd vimenter * NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1

cmap w!! w !sudo tee > /dev/null %

map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>
map <C-t> :tabnew<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap { {}<Esc>i
inoremap <TAB> <C-y>,

nmap <F12> :GoDef<CR>
nmap <F2> :GoImports<CR>
nmap <F8> :TagbarToggle<CR>

set number
set splitbelow
set splitright

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

