cask "tokenscope" do
  version "1.5.1"
  sha256 "6474b5ada06d2be02e72493cb3f3374cc3cd761aec74b0d000dbc97ee45d1dfd"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.5.1/Tokenscope_1.5.1_universal.dmg"
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
