_pick_from()
{
    COMPREPLY=()
    local cur="${COMP_WORDS[COMP_CWORD]}"

    local branches=$(git for-each-ref --format='%(refname:short)' refs/heads)
    COMPREPLY=($(compgen -W "${branches}" -- ${cur}))
    return 0
}

complete -F _pick_from pick-from
