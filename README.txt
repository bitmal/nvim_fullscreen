Modified the following version to suit my needs (to function with NVIM, and other addons):

https://www.vim.org/scripts/script.php?script_id=2596

.vimrc Keybinds (modify if you will):

[Alpha Dec]
map <F10> <Esc>:let windowAlpha=windowAlpha-windowAlphaInterval <bar> :call libcallnr("nvim_fullscreen.dll", "SetAlpha", windowAlpha)<CR>

[Alpha Inc]
map <F11> <Esc>:let windowAlpha=windowAlpha+windowAlphaInterval <bar> :call libcallnr("nvim_fullscreen.dll", "SetAlpha", windowAlpha)<CR>

[Toggle Off/On]
map <F12> <Esc>:call libcallnr("nvim_fullscreen.dll", "ToggleFullScreen", windowAlpha)<CR>
