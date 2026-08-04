cask "tokenscope" do
  version "1.4.7"
  sha256 "a1fc9d65c5a61d17a77504449d8e1b08eef28515b4679eba8f0ea44d3ab85fed"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.7/Tokenscope_1.4.7_universal.dmg"
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
