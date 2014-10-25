# Automatic updates for Homebrew

This is a little thingy that automatically calls `brew update` every
half hour and sends you a notification when something new is
available.  (Note, it only calls `update`, not `upgrade`, at this
point.)

To install, use

    brew install petere/auto-update/brew-auto-update --HEAD

and then follow the instructions that are printed:

```
==> Caveats
To have launchd start brew-auto-update at login:
    ln -sfv /usr/local/opt/brew-auto-update/*.plist ~/Library/LaunchAgents
Then to load brew-auto-update now:
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.brew-auto-update.plist
```
