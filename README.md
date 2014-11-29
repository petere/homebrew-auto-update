# Automatic updates for Homebrew

This is a little thingy that automatically calls `brew update` and
optionally `brew fetch` every half hour and sends you a notification
when something new is available.  (It doesn't call `upgrade`, yet.)

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

The App Store preferences for checking for updates are respected, so
to turn off updating or fetching, change the settings there.
