cask "tokenscope" do
  version "1.4.6"
  sha256 "96c954c2273ecd13beeceb126464aca40ef69a429eba546623df64582d8a288a"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.6/Tokenscope_1.4.6_universal.dmg"
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
