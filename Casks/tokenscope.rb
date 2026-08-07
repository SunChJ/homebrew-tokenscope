cask "tokenscope" do
  version "1.5.2"
  sha256 "90cfb16f9176a83f277d6ee3a79e346a50993c70b2519f10b5d30de7e4dbb5f4"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.5.2/Tokenscope_1.5.2_universal.dmg"
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
