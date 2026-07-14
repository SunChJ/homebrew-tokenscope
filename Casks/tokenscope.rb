cask "tokenscope" do
  version "1.3.7"
  sha256 "9a9a27339234141264b538e6e23187003da7d8169e3d9389e5dce69b9dac5bea"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.7/Tokenscope_1.3.7_universal.dmg"
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
