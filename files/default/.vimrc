" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
"
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
" Vi�݊����[�h���I�t�iVim�̊g���@�\��L���j
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
" �t�@�C�����Ɠ��e�ɂ���ăt�@�C���^�C�v�𔻕ʂ��A�t�@�C���^�C�v�v���O�C����L���ɂ���
filetype indent plugin on
 
" Enable syntax highlighting
" �F�Â����I��
syntax on
 
 
"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
" ������������I�v�V����
 
" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
" �o�b�t�@��ۑ����Ȃ��Ă����̃o�b�t�@��\���ł���悤�ɂ���
set hidden
 
" Better command-line completion
" �R�}���h���C���⊮��֗���
set wildmenu
 
" Show partial commands in the last line of the screen
" �^�C�v�r���̃R�}���h����ʍŉ��s�ɕ\��
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
" ������������\���i<C-L>�������ƌ��݂̋����\������������j
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" ���j�I�Ƀ��[�h���C���̓Z�L�����e�B��̐Ǝ㐫�ɂȂ��Ă����̂ŁA
" �I�t�ɂ��đ���ɏ�L��securemodelines�X�N���v�g���g���Ƃ悢�B
" set nomodeline
 

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
" �������ɑ啶���E����������ʂ��Ȃ��B�������A������ɑ啶����������
" ���݂��Ă���Ƃ��͋�ʂ���
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
" �I�[�g�C���f���g�A���s�A�C���T�[�g���[�h�J�n����Ƀo�b�N�X�y�[�X�L�[��
" �폜�ł���悤�ɂ���B
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" �I�[�g�C���f���g
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" �ړ��R�}���h���g�����Ƃ��A�s���Ɉړ����Ȃ�
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
" ��ʍŉ��s�Ƀ��[���[��\������
set ruler
 
" Always display the status line, even if only one window is displayed
" �X�e�[�^�X���C������ɕ\������
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
" �o�b�t�@���ύX����Ă���Ƃ��A�R�}���h���G���[�ɂ���̂łȂ��A�ۑ�����
" ���ǂ����m�F�����߂�
set confirm
 
" Use visual bell instead of beeping when doing something wrong
" �r�[�v�̑���Ƀr�W���A���x���i��ʃt���b�V���j���g��
" set visualbell
 
" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
" �����ăr�W���A���x��������������
set t_vb=
 
" Enable use of the mouse for all modes
" �S���[�h�Ń}�E�X��L����
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" �R�}���h���C���̍�����2�s��
set cmdheight=1
 
" Display line numbers on the left
" �s�ԍ���\��
" set number
 
" Quickly time out on keycodes, but never time out on mappings
" �L�[�R�[�h�͂����Ƀ^�C���A�E�g�B�}�b�s���O�̓^�C���A�E�g���Ȃ�
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
" <F11>�L�[��'paste'��'nopaste'��؂�ւ���
set pastetoggle=<F11>

" vim�̉��s���Ɏ����ŃR�����g���}�������̂�߂�
autocmd FileType * setlocal formatoptions-=ro 

" �X�e�[�^�X���C���ɂ͎��̏���\��������
" �ҏW���̃t�@�C����
" �ҏW���̃t�@�C���t�H�[�}�b�g�iDOS�AUnix�j
" Vim���F�����Ă��錻�݂̃t�@�C���^�C�v
" �h�L�������g���̈ʒu�������s����ї�ԍ�
" �t�@�C���̒����i�s���j
" ���݂̎���
function! g:Date()
    return strftime("%x %H:%M")
endfunction
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %{g:Date()}

"���̓��[�h���A�X�e�[�^�X���C���̃J���[��ύX
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

if has("win32") || has("win64") 
  set rtp+=~/vimfiles/bundle/vundle 
  call vundle#rc('~/vimfiles/bundle') 
else 
  set rtp+=~/.vim/bundle/vundle 
  call vundle#rc() 
endif 

Bundle 'gmarik/vundle' 

"------------------------------------------------------------
" Indentation options {{{1
" �C���f���g�֘A�̃I�v�V���� {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" �^�u�����̑���ɃX�y�[�X2���g���ꍇ�̐ݒ�B
" ���̏ꍇ�A'tabstop'�̓f�t�H���g��8����ς��Ȃ��B
set shiftwidth=2
set softtabstop=2
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
" �C���f���g�Ƀn�[�h�^�u���g���ꍇ�̐ݒ�B
" �^�u������2�������̕��ŕ\������B
"set shiftwidth=2
"set tabstop=2
 
"------------------------------------------------------------
" Mappings {{{1
" �}�b�s���O
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
" Y�̓����D��C�Ɠ����ɂ���
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
" <C-L>�Ō�����̋����\������������
nnoremap <C-L> :nohl<CR><C-L>
 
 
"------------------------------------------------------------

if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    if has('mac')
      let &fileencodings = s:enc_jis .','. s:enc_euc
      let &fileencodings = &fileencodings .','. s:fileencodings_default
    else
      let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
      let &fileencodings = &fileencodings .','. s:fileencodings_default
    endif
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  unlet s:enc_euc
  unlet s:enc_jis
endif
