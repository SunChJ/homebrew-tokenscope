cask "tokenscope" do
  version "1.5.6"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "04fbc9fbb8ed77033171008188a8553a35b5173eab42e28c776371462448ae73", intel: "fa52e60efec90e2243cc1d2322700365c838ddeeacb517c5276aba866c13db48"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.5.6/Tokenscope_#{version}_#{arch}.dmg"
  name "Tokenscope"
  desc "Menu-bar dashboard for local AI coding agent token usage (Claude Code, Codex)"
  homepage "https://github.com/SunChJ/tokenscope-remix"

  depends_on macos: :catalina
  app "Tokenscope.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Tokenscope.app"],
                   sudo: false
  end
end
