cask "tokenscope" do
  version "1.4.0"
  sha256 "737c36f9f382f6aa884d9044ae4a8b16856c93b7e3d80376c2bfe3cdb15f195a"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.0/Tokenscope_1.4.0_universal.dmg"
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
