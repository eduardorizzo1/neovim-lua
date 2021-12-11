map <C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * wincmd p
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeDirArrowExpandable = '✚'
" let g:NERDTreeDirArrowCollapsible = '➜'
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeQuitOnOpen = 0
let g:NERDTreeGitStatusShowIgnored = 1
let g:webdevicons_enable_nerdtree = 1
let NERDTreeShowHidden=1
let g:WebDevIconsNerdTreeAfterGlyphPadding='  '
" set ambiwidth=double
autocmd FileType nerdtree setlocal nolist

