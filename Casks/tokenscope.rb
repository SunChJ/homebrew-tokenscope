cask "tokenscope" do
  version "1.1.0"
  sha256 "d3d782bae4976c52478834e1c667b6c98005b2c41750b808d79afbfd28b6097c"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v#{version}/Tokenscope_#{version}_universal.dmg"
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
