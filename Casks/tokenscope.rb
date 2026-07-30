cask "tokenscope" do
  version "1.4.2"
  sha256 "acab1a85f875a154ed9e343bd4049054e5ba78773d553aad740465a10fed50e1"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.2/Tokenscope_1.4.2_universal.dmg"
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
