cask "tokenscope" do
  version "1.3.0"
  sha256 "ff9eb2464552d611d9b9ac51cf5396466bcbf27f0e776bf9b4cda66c98760029"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.0/Tokenscope_1.3.0_universal.dmg"
  name "Tokenscope"
  desc "Menu-bar dashboard for local AI coding agent token usage (Claude Code, Codex)"
  homepage "https://github.com/SunChJ/tokenscope-remix"

  depends_on macos: ">= :catalina"
  app "Tokenscope.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Tokenscope.app"],
                   sudo: false
  end
end
