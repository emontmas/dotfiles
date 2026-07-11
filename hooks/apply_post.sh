#!/bin/bash

set -e

if ! [[ -d ~/.tmux/plugins/tpm ]]; then
	if [[ $CHEZMOI_ARGS =~ [[:space:]]-.*n.*([[:space:]]|$) ]] || [[ $CHEZMOI_ARGS =~ [[:space:]]--dry-run([[:space:]]|$) ]]; then
		echo "Tmux Plugin Manager (TPM) isn't installed. Re-run without dry-run to be prompted for installation."
	else
		while true; do
			read -p "Tmux Plugin Manager (TPM) isn't installed. Install it in ~/.tmux/plugins/tpm? (Y/n)" RES
			case $RES in
				y | Y | "")
					echo "Installing TPM..."
					git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
					echo "TPM installed"
					break
					;;
				n | N)
					break
					;;
				*)
					echo "Invalid input"
					;;
			esac
		done
		echo "Tmux Plugin manager (TPM) installed. Start a tmux session and input prefix+I to install plugins."
	fi
fi

if ! grep -q "\. ~/.config/bashrc" ~/.bashrc; then
	echo "Adding sourcing of ~/.config/bashrc to ~/.bashrc"
	echo ". ~/.config/bashrc" >> ~/.bashrc
fi
