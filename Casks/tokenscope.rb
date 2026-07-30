cask "tokenscope" do
  version "1.4.3"
  sha256 "87428de26aaa777472ad444dd64bf0a4f5e5587007026eda30ad11e59322cea1"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.3/Tokenscope_1.4.3_universal.dmg"
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
