# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi
# init plugins
/usr/local/bin/antibody bundle < ~/.zsh/plugins.txt > ~/.zsh/plugins.zsh

# Aliases (must be sourced before plugins)
source ~/.zsh/aliases.zsh

# Impact settings
source ~/.zsh/impact.zsh

# go settings
source ~/.zsh/go.zsh

# Settings
source ~/.zsh/settings.zsh

# External settings
source ~/.zsh/external.zsh

# Source plugins
source ~/.zsh/plugins.zsh

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi
