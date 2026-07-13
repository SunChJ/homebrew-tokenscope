cask "tokenscope" do
  version "1.3.4"
  sha256 "293cfbd79c978cededc055462ab27ab56abe8660d73f7bc73587f4988a3aabd6"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.4/Tokenscope_1.3.4_universal.dmg"
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
