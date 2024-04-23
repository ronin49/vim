runtime defaults.vim
if has("cscope")
	if filereadable("cscope.out")
		set csto=0
		set cst
		set nocsverb
		cs add cscope.out
		set csverb
		map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
		map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>
		set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
	endif
endif
set noswapfile
set hidden
nnoremap gb :ls<CR>:b<Space>
