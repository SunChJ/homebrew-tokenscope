cask "tokenscope" do
  version "1.1.0"
  sha256 "e7bd26ce2c9928e091c80c6e14ec7ef5265a105632f9e32260eb3fb58b440467"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.1.0/Tokenscope_1.1.0_universal.dmg"
  name "Tokenscope"
  desc "Menu-bar dashboard for local AI coding agent token usage (Claude Code, Codex)"
  homepage "https://github.com/SunChJ/tokenscope-remix"

  depends_on macos: :catalina

  app "Tokenscope.app"

  # Unsigned/unnotarized build: strip the quarantine flag Homebrew
  # adds so the app opens without the "Apple cannot verify" prompt.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Tokenscope.app"],
                   sudo: false
  end
end
