cask "tokenscope" do
  version "1.3.3"
  sha256 "ec855e3fd76f5dc1813fbd810af3528c580fcd1aa361e09f6c375d2f40dc955c"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.3/Tokenscope_1.3.3_universal.dmg"
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
