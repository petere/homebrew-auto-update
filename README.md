# Automatic updates for Homebrew

This is a little thingy that automatically calls `brew update` and
optionally `brew fetch` every half hour and sends you a notification
when something new is available.  (It doesn't call `upgrade`, yet.)

To install, use

    brew install petere/auto-update/brew-auto-update --HEAD

and then follow the instructions that are printed:

```
==> Caveats
To have launchd start petere/auto-update/brew-auto-update now and restart at login:
  brew services start petere/auto-update/brew-auto-update
```

The App Store preferences for checking for updates are respected, so
to turn off updating or fetching, change the settings there.
