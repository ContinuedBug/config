function fish_prompt --description 'Write out the prompt'
    set -l color_cwd
    set -l prefix
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix ''
    end

    # PWD
    set_color red --bold
    echo -n (basename $PWD)]\ 
    set_color normal
    echo -n "$suffix"
end
