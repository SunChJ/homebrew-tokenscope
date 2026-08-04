cask "tokenscope" do
  version "1.4.5"
  sha256 "4660bfa4845d945f3dbd35dd40a2d4026e0c91fca14bd005e251e29391fe6792"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.5/Tokenscope_1.4.5_universal.dmg"
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
