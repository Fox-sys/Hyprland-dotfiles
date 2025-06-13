export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias untar="tar -xvf"

watch_search() {
    if [ -z "$2" ]; then
        echo "Укажите режим и искомый текст, например: search regex print [.git .venv ...]"
        return 1
    fi

    local mode="$1"
    local search_term="$2"
    shift 2
    local exclude_patterns=("$@")

    local grep_cmd="grep -rnw '.'"
    if [ "$mode" = "regex" ]; then
        grep_cmd="$grep_cmd -E"
    fi
    grep_cmd="$grep_cmd -e '$search_term' 2>/dev/null"
    for pattern in "${exclude_patterns[@]}"; do
        grep_cmd="$grep_cmd | grep -v '$pattern'"
    done

    watch -n 1 "$grep_cmd"
}