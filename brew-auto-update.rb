require 'formula'

class BrewAutoUpdate < Formula
  homepage 'https://github.com/petere/homebrew-auto-update/'
  head 'https://github.com/petere/homebrew-auto-update.git', :branch => 'master'

  depends_on 'terminal-notifier'

  def install
    inreplace 'bin/brew-auto-update', '/usr/local', HOMEBREW_PREFIX
    prefix.install 'bin'
    (bin/'brew-auto-update').chmod 0755
  end

  def plist; <<EOS
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd >

<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>

    <key>ProgramArguments</key>
    <array>
      <string>#{opt_bin}/brew-auto-update</string>
    </array>

    <key>ProcessType</key>
    <string>Background</string>

    <key>StartInterval</key>
    <integer>1800</integer>

    <key>RunAtLoad</key>
    <true/>

    <key>StandardOutPath</key>
    <string>/tmp/brew-auto-update.out</string>

    <key>StandardErrorPath</key>
    <string>/tmp/brew-auto-update.err</string>
  </dict>
</plist>
EOS
  end
end
