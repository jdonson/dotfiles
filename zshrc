# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

# init plugins
antibody bundle < ~/.zsh/plugins.txt > ~/.zsh/plugins.zsh

# Source plugins
source ~/.zsh/plugins.zsh

# Impact settings
source ~/.zsh/impact.zsh

# go settings
source ~/.zsh/go.zsh

# Settings
source ~/.zsh/settings.zsh

# Bootstrap
source ~/.zsh/bootstrap.zsh

# External settings
source ~/.zsh/external.zsh

# Aliases
source ~/.zsh/aliases.zsh

# Custom prompt
source ~/.zsh/prompt.zsh

# Syntax highlighting
source ~/.zsh/syntax.zsh

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi
