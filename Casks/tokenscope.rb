cask "tokenscope" do
  version "1.5.7"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "18912661d988803ebeb2306bc3c41cf7750859f6b06a333cb9003f188317c66e", intel: "d6fdb5c436f1cff4bbbc8d2418c6366acbc3e61e7b5ed0c5c05ab45c8c7ffba2"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.5.7/Tokenscope_#{version}_#{arch}.dmg"
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
