cask "tokenscope" do
  version "1.4.4"
  sha256 "11c753bcb867071db5355b48425fbe6c093676009727bb6876761ca37e2efaec"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.4.4/Tokenscope_1.4.4_universal.dmg"
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
