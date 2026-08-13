cask "tokenscope" do
  version "1.6.1"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "410b7f4c738539f5135e9e0d12968c71154319a7b1404dc612a9049c44195213", intel: "2ebb23151cdbdb88e0752616f8cb0a0b069ce63714de941fcceb86a7a4366ca5"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.6.1/Tokenscope_#{version}_#{arch}.dmg"
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
