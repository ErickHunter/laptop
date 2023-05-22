#!/usr/bin/env sh

case "$(uname)" in
	Darwin)

# Ask for computer name
echo Please enter the desired hostname :
read -r HOSTVAR

# Rename the computer
sudo scutil --set ComputerName "${HOSTVAR}"
sudo scutil --set HostName "${HOSTVAR}"
sudo scutil --set LocalHostName "${HOSTVAR}"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "${HOSTVAR}"

# Add message to lock screen
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "If found, contact me: \nlost@erick.ee"

sudo pmset -a standbydelay 1500															# Set standby delay

defaults write NSGlobalDomain AppleShowAllExtensions -bool true									# Show all file extentions
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true					# Disable auto-termination of inactive apps
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true									# Add menu item for developer extras

defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true				# Turn on automatic update check
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1								# check for updates daily
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1								# Download updated in the background

defaults write com.apple.dock show-recents -bool false													# Remove recent apps from dock
defaults write com.apple.dock tilesize -int 39																	# Set new dock icon size

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true		# No .DS_Store on network shares
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true				# ... or USB drives

defaults write com.apple.screencapture location -string "${HOME}/Screenshots"		# Store screenshots in a special folder
defaults write com.apple.screencapture type -string "png"									# Store screenshots in png format

defaults write com.apple.screensaver askForPassword -int 1											# Ask for password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPasswordDelay -int 0

defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true		# Quit printer app when finished

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true							# Full path in finder window title
defaults write com.apple.finder ShowPathbar -bool true													# Show path bar in finder window
defaults write com.apple.finder ShowStatusBar -bool true												# Show status bar in finder window
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false			# Don't show harddrives in desktop

defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true		# Disable Photos.app hotplug opening

defaults write com.googlecode.iterm2 PromptOnQuit -bool false										# Disable iTerm2 quit prompt

chflags nohidden ~/Library																											# Unhide ~/Library

	;;
esac
