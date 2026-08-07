cask "tokenscope" do
  version "1.5.4"
  sha256 "0900e786a48bd1f458740c5acd823b12a4d96145b817504a268e94b351596b19"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.5.4/Tokenscope_1.5.4_universal.dmg"
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
