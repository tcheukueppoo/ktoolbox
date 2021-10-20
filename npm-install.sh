#!/usr/bin/env sh

# install language servers

check () {
	if ! command -V npm ; then
		printf "npm package manager not installed"
		return 1
	fi
}

instals () {
	npm i -g \
		# bash language server
		bashls \
		# html/css language server
		vscode-langservers-extracted \
		# python language server
		pyright \
		# golang language server
		gopls \
		# typescript language server
		typescript typescript-language-server \
	# installing clangd via packages manager
	case "$(uname -a)" in
		*[aA]rch*) pacman -Sy clangd ;;
		*[Dd]ebian*) apt-get install clangd-12 ;;
		*BSD*) ;;# doas ... 
		*) printf "Unkown operating system" 2>/dev/null
	esac
	# fetch and install the following LS:
	# lua, markdown, language server from github
	#git clone 'https://github.com/sumneko/lua-language-server' /tmp/luals

}

check && instals
