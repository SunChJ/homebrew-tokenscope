cask "tokenscope" do
  version "1.2.2"
  sha256 "27efbfd7508023008553c145ff6dd16734df95a9973fb3fa894ca1bf7d07b345"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.2.2/Tokenscope_1.2.2_universal.dmg"
  name "Tokenscope"
  desc "Menu-bar dashboard for local AI coding agent token usage (Claude Code, Codex)"
  homepage "https://github.com/SunChJ/tokenscope-remix"

  depends_on macos: ">= :catalina"

  app "Tokenscope.app"

  # Unsigned/unnotarized build: strip the quarantine flag Homebrew
  # adds so the app opens without the "Apple cannot verify" prompt.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Tokenscope.app"],
                   sudo: false
  end
end
