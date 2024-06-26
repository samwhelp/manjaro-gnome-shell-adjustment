#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

set -e

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
THE_INIT_DIR_PATH="${THE_BASE_DIR_PATH}/helper/ext"
. "${THE_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Start
##

main_config_install () {

	#util_error_echo 'main_config_install'

	gnome_shell_config_main_config_install

	gnome_shell_workspace_main_config_install

	gnome_shell_favorite_apps_config_install

	gnome_shell_extension_dash_to_dock_config_install

	gnome_shell_keybind_main_config_install

	gnome_shell_keybind_custom_config_install

	gnome_terminal_config_install

	gnome_text_editor_config_install

	nautilus_config_install

	gnome_shell_wallpaper_main_config_install




	return 0

}

##
### Tail: Model / Start
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
