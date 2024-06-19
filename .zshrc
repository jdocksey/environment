# Enable vcs_info to load version control information
autoload -Uz vcs_info
# Always load before displaying the prompt
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt (with Git branch name)
setopt PROMPT_SUBST

NEWLINE=$'\n'
PS1='${NEWLINE}%F{8}%m:%n%f %F{2}%~ ${vcs_info_msg_0_}%f${NEWLINE}'



# Aliases
alias c='clear'

alias v='vim'
alias pr='vim ~/.zshrc'

alias g='git'
alias s='git status'
alias b='git branch'
alias l='git log --pretty=oneline'

alias sha='shasum -a 256'

# deployctl
export DEPLOYCTL_HOME="/Users/Joseph/.deno/bin"
case ":$PATH:" in
  *":$DEPLOYCTL_HOME:"*) ;;
  *) export PATH="$DEPLOYCTL_HOME:$PATH" ;;
esac
# deployctl end

# pnpm
export PNPM_HOME="/Users/Joseph/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
