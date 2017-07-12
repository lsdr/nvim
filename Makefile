# Makefile for lsdr-neovim distribution
REPO_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

XDG_CONFIG_HOME:=$(HOME)/.config
NEOVIM_HOME:=$(XDG_CONFIG_HOME)/nvim

CURL:=$(shell command -v curl 2> /dev/null)
NVIM:=$(shell command -v nvim 2> /dev/null)

PLUG_REMOTE_URL:="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

all: install

check_deps:
ifndef NVIM
	$(error "neovim is not available, are you kidding me?")
endif
ifndef CURL
	$(error "curl is not available, please install to proceeed")
endif

# vimrc gvimrc:
#   ln -nsf $(NEOVIM_HOME)/_$@ $(HOME)/.$@
#
# relink: vimrc gvimrc
#   @printf "Configuration files relinked!\n"

tmpdir pluginsdir:
	mkdir -p $(NEOVIM_HOME)/$(patsubst %dir,%,$@)

init_bundle:
	@printf "Fetching and installing vim-plug...\n";
	CURL -fLo $(NEOVIM_HOME)/autoload/plug.vim --create-dirs \
		$(PLUG_REMOTE_URL) 2> /dev/null

load_bundle: init_bundle
	@printf "Installing plugins...\n";
	$(NVIM) +PlugInstall +qall -n --headless 2> /dev/null

existing_install_check:
	@printf "Looking for a lsdr-neovim distro in XDG_CONFIG_HOME... ";
	@if [ -d $(NEOVIM_HOME) -o -h $(NEOVIM_HOME) ]; then \
		printf "\nFound an existing $(NEOVIM_HOME), exiting.\n"; \
		exit 1; \
	fi
	@printf "none found.\n";

neovim_home_setup: existing_install_check
	@printf "Bootstraping lsdr-neovim distro now... \n";
	ln -nsf $(REPO_DIR) $(NEOVIM_HOME)

xdg_config_home_setup:
	@printf "Making sure XDG_CONFIG_HOME exists... ";
	@if [ ! -d $(XDG_CONFIG_HOME) ]; then \
		mkdir -p $(XDG_CONFIG_HOME); \
	fi
	@printf "done.\n"; \

install: check_deps xdg_config_home_setup neovim_home_setup tmpdir pluginsdir load_bundle
	@printf "All set. \033[1;32mnvim is ready\033[0m to code.\n";

clean:
	rm -fr $(NEOVIM_HOME)/tmp
	rm -fr $(NEOVIM_HOME)/plugins
	rm -fr $(NEOVIM_HOME)/autoload
	rm -fr $(NEOVIM_HOME)
	@printf "Done. lsdr-neovim was \033[1;37msuccessfully uninstalled\033[0m. Moving on...\n";
