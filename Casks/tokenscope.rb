cask "tokenscope" do
  version "1.4.8"
  sha256 "53cf6c48be2e772bd4cedebe5c56b02b76460dc2f327d0b5d34f5db61b82075d"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.8/Tokenscope_1.4.8_universal.dmg"
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
