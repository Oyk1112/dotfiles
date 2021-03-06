" This file contains the Bundle plug-in configuration.

" Code Completion {

    " Emmet {

        if isdirectory(expand("~/.vim/bundle/emmet-vim"))
        imap <F3> <Esc><C-Y>,i
        endif

    " }

    " YouCompleteMe {

        if isdirectory(expand("/usr/share/vim-youcompleteme"))
	set rtp+=/usr/share/vim-youcompleteme
        let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
        let g:ycm_server_python_interpreter='/usr/bin/python'
        endif

    " }

" }

" ColorScheme {

     if isdirectory(expand("~/.vim/bundle/molokai"))
     colorscheme molokai           " Load a colorscheme
     endif

" }

" IDE Features {

    " Nerdtree {

        if isdirectory(expand("~/.vim/bundle/nerdtree"))
        autocmd VimEnter * silent NERDTree | wincmd p
        map  <leader>snt :NERDTreeToggle<CR>
        nmap <leader>snf :NERDTreeFind<CR>

        let NERDTreeWinSize=20
        let NERDTreeShowLineNumbers=1
        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let NERDTreeCaseSensitiveSort=1
        let NERDTreeNaturalSort=1
        let g:nerdtree_tabs_open_on_gui_startup=1
        let g:nerdtree_tabs_open_on_console_startup=1
        endif

    " }

    " Air-line {

        if isdirectory(expand("~/.vim/bundle/vim-airline"))
	" let g:airline_theme="luna"
		let g:airline_powerline_fonts = 1
		let g:airline_left_sep = ''
     	let g:airline_left_alt_sep = ''
		let g:airline_right_sep = ''
		let g:airline_right_alt_sep = ''
        let g:airline#extensions#tabline#enabled = 1   " enable tabline
		if !exists('g:airline_symbols')
        let g:airline_symbols = {}
		endif
        noremap <leader><C-n> :bnext<CR>
        noremap <leader><C-p> :bprev<CR>
        endif

    " }

    " TagBar {

        if has('unix')
        let g:tagbar_ctags_bin = '/usr/bin/ctags'
        elseif has('mac')
        let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
        elseif has('win32')
        let g:tagbar_ctags_bin = 'C:\Program Files\ctags58\ctags.exe'
        endif

        if isdirectory(expand("~/.vim/bundle/tagbar"))
        nnoremap <silent> <leader>stt :TagbarToggle<CR>
        let g:tagbar_show_linenumbers = 1     " enable line
        let g:tagbar_width = 20
        autocmd vimenter * Tagbar
        endif

     " }

     " Auto-pairs {

         if isdirectory(expand("~/.vim/bundle/auto-pairs"))
         let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`','<':'>'}    " add pairs <>
         let g:AutoPairsFlyMode = 1  " enable flymode
         endif

     " }

     " Undotree {

         if isdirectory(expand("~/.vim/bundle/undotree"))
         map <Leader>sut :UndotreeToggle<CR>
         " If undotree is opened, it is likely one wants to interact with it.
         let g:undotree_SetFocusWhenToggle=1
         set undodir='~/.undodir/'
         set undofile
         endif

     " }

     " Nerdcommenter {

         if isdirectory(expand("~/.vim/bundle/nerdcommenter"))
         let g:NERDSpaceDelims = 1             " Add spaces after comment delimiters by default
         let g:NERDCompactSexyComs = 1         " Use compact syntax for prettified multi-line comments
         let g:NERDDefaultAlign = 'left'       " Align line-wise comment delimiters flush left
         let g:NERDCommentEmptyLines = 1       " Allow commenting and inverting empty lines
         let g:NERDTrimTrailingWhitespace = 1  " Enable trimming of trailing whitespace when uncommenting
         endif

     " }

     " Fugitive {

          if isdirectory(expand("~/.vim/bundle/vim-fugitive"))
          nnoremap <silent> <leader>sgs :Gstatus<CR>
          nnoremap <silent> <leader>sgd :Gdiff<CR>
          nnoremap <silent> <leader>sgc :Gcommit<CR>
          nnoremap <silent> <leader>sgb :Gblame<CR>
          nnoremap <silent> <leader>sgl :Glog<CR>
          nnoremap <silent> <leader>sgp :Gpush<CR>
          nnoremap <silent> <leader>sgr :Gread<CR>
          nnoremap <silent> <leader>sgw :Gwrite<CR>
          nnoremap <silent> <leader>sge :Gedit<CR>
          " Mnemonic _i_nteractive
          nnoremap <silent> <leader>sgi :Git add -p %<CR>
          nnoremap <silent> <leader>sgg :SignifyToggle<CR>
          endif

     " }

     " Tabular {

         if isdirectory(expand("~/.vim/bundle/tabular"))
         nmap <Leader>a& :Tabularize /&<CR>
         vmap <Leader>a& :Tabularize /&<CR>
         nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
         vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
         nmap <Leader>a=> :Tabularize /=><CR>
         vmap <Leader>a=> :Tabularize /=><CR>
         nmap <Leader>a: :Tabularize /:<CR>
         vmap <Leader>a: :Tabularize /:<CR>
         nmap <Leader>a:: :Tabularize /:\zs<CR>
         vmap <Leader>a:: :Tabularize /:\zs<CR>
         nmap <Leader>a, :Tabularize /,<CR>
         vmap <Leader>a, :Tabularize /,<CR>
         nmap <Leader>a,, :Tabularize /,\zs<CR>
         vmap <Leader>a,, :Tabularize /,\zs<CR>
         nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
         vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
         endif

     " }

     " Easy-motion {

         if isdirectory(expand("~/.vim/bundle/vim-easymotion"))
         let g:EasyMotion_smartcase = 1
         map <Leader><leader>h <Plug>(easymotion-linebackward)
         map <Leader><leader>l <Plug>(easymotion-lineforward)
         map <Leader><leader>. <Plug>(easymotion-repeat)
		 map <Leader><leader>j <Plug>(easymotion-j)
		 map <Leader><leader>k <Plug>(easymotion-k)

		 function! s:incsearch_config(...) abort
  		 return incsearch#util#deepextend(deepcopy({
 		 \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
 		 \   'keymap': {
 		 \     "\<CR>": '<Over>(easymotion)'
  		 \   },
 		 \   'is_expr': 0
  		 \ }), get(a:, 1, {}))
		 endfunction

		 noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
		 noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
		 noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

		 function! s:config_easyfuzzymotion(...) abort
  		 return extend(copy({
  		 \   'converters': [incsearch#config#fuzzyword#converter()],
  		 \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  		 \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  		 \   'is_expr': 0,
 		 \   'is_stay': 1
 		 \ }), get(a:, 1, {}))
		 endfunction

		 noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())
         endif

     " }

     " Ack {

         if isdirectory(expand("~/.vim/bundle/ack.vim"))
         map <Leader>sac :Ack!<Space>
         let g:ackhighlight = 1
         let g:ack_qhandler = "botright copen 15"
         endif

     " }

     " Ctrlp {

         if isdirectory(expand("~/.vim/bundle/ctrlp.vim"))
         nnoremap <silent> <Leader>scp :CtrlP<CR>
         nnoremap <silent> <Leader>scm :CtrlPMRU<CR>
         let g:ctrlp_custom_ignore = {
         \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
         \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
         \ }
         let g:ctrlp_working_path_mode = 'ra'
         let g:ctrlp_match_window_bottom=1
         let g:ctrlp_max_height=15
         let g:ctrlp_match_window_reversed=0
         let g:ctrlp_mruf_max=500
         let g:ctrlp_follow_symlinks=1
         let g:ctrlp_switch_buffer = 'Et'
         endif

     " }

     " Surround {

         if isdirectory(expand("~/.vim/bundle/vim-surround"))
         let g:surround_{char2nr("d")} = "<div\1id: \r..*\r id=\"&\"\1>\r</div>"
         endif

     " }

     " ultisnips {

         if isdirectory(expand("~/.vim/bundle/ultisnips"))
         let g:UltiSnipsUsePythonVersion = 3
         let g:UltiSnipsSnippetsDir = "~/.vim/bundle/UltiSnips"
         let g:UltiSnipsSnippetDirectories = ['UltiSnips']
         let g:UltiSnipsExpandTrigger="<c-j>"
         let g:UltiSnipsJumpForwardTrigger="<c-b>"
         let g:UltiSnipsJumpBackwardTrigger="<c-z>"
         endif

     " }

     " multiple-cursor {

         if isdirectory(expand("~/.vim/bundle/vim-multiple-cursors"))
         nnoremap <C-c> :call multiple_cursors#quit()<CR>
         highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
         highlight link multiple_cursors_visual Visual
         endif

     " }

     " vim-devicons{

	 if isdirectory(expand("~/.vim/bundle/vim-devicons"))
         set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
		 let g:webdevicons_enable = 1
	     let g:webdevicons_enable_airline_tabline = 1
		 let g:webdevicons_enable_airline_statusline = 1
         let g:webdevicons_enable_ctrlp = 1
		 let g:webdevicons_conceal_nerdtree_brackets = 1
		 let g:webdevicons_enable_nerdtree = 1
		 let g:WebDevIconsUnicodeDecorateFolderNodes = 1
		 let g:DevIconsEnableFoldersOpenClose = 1
         let g:webdevicons_gui_glyph_fix = 1
	 endif

     " }

     " vim-startify{

         if isdirectory(expand("~/.vim/bundle/vim-startify"))
         map <silent> <Leader>ssf :Startify<CR>
         endif

     " }

	" vim-better-whitespace{

         if isdirectory(expand("~/.vim/bundle/vim-better-whitespace"))
		 autocmd BufEnter * silent EnableStripWhitespaceOnSave
		 let g:better_whitespace_verbosity=1
         map <silent> <Leader>ssw :StripWhitespace<CR>
         endif

	" }

" }
