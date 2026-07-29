cask "tokenscope" do
  version "1.4.1"
  sha256 "d92fad90dd030ef75c38f15045e687de4a632de52d9b930260cd82168f501410"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.1/Tokenscope_1.4.1_universal.dmg"
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
