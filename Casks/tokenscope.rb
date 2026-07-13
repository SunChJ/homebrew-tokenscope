cask "tokenscope" do
  version "1.3.1"
  sha256 "3ad34d104074e46557350c31b748889abdf3070c77939e1c85971c99dc8e8d84"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.3.1/Tokenscope_1.3.1_universal.dmg"
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
