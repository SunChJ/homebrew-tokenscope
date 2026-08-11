cask "tokenscope" do
  version "1.6.0"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "94546726218ed1121890a65354b705777103aceb743eea448c016a32327cf4a8", intel: "706c749fe5fccb25d8f3b685964a572bc8a60bcb8cd9b384924aab25ed4ed94d"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.6.0/Tokenscope_#{version}_#{arch}.dmg"
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
