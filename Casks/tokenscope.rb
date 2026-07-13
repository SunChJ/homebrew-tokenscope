cask "tokenscope" do
  version "1.3.2"
  sha256 "bf6f49fa7d073157e3f9efc1a898289b3e4e75a57931d62b4a53e3be9223325c"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.2/Tokenscope_1.3.2_universal.dmg"
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
