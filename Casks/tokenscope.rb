cask "tokenscope" do
  version "1.3.6"
  sha256 "e1ed91518438c482fa2edf91c18656f33b1bb91b750f76dabf7f04faca9e6844"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.6/Tokenscope_1.3.6_universal.dmg"
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
