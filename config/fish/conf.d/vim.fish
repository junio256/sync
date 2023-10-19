#set -g fish_default_key_bindings
function fish_hybrid_key_bindings --description \
"Vi-style bindings that inherit emacs-style bindings in all modes"
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings --no-erase
end
set -g fish_key_bindings fish_hybrid_key_bindings

#options:block, underscore, line
set fish_cursor_default block blink
set fish_cursor_insert block
set fish_cursor_replace_one underscore
set fish_cursor_visual block
