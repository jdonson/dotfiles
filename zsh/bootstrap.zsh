PATH=~/.bin:~/.local/bin/:/usr/local/bin:${PATH}
eval $(keychain --eval --quiet github_deploy id_rsa_amerenda_personal id_rsa_amerenda_placeiq)
