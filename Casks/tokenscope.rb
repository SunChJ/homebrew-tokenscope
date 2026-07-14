cask "tokenscope" do
  version "1.3.5"
  sha256 "f4725d443bed4b58509bb4b5249810b2951f017da9d5b0072f844bd6b5d31654"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.5/Tokenscope_1.3.5_universal.dmg"
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
