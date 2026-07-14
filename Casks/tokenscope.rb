cask "tokenscope" do
  version "1.3.8"
  sha256 "a5f74a6e47ce6d2e4d0ff323dc86587fba5f4cad7d3d82556215709e422c6592"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.8/Tokenscope_1.3.8_universal.dmg"
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
