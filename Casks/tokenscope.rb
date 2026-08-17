cask "tokenscope" do
  version "1.6.3"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "71ee55ec5b3eae0366c3643edb19236411473d22a16146cc6eb9e02b4fa8e8c0", intel: "a0a70f81000026a5b7391d8cd5c8d1716f27a7592cbe634c063e3c3e3b70bf0c"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.6.3/Tokenscope_#{version}_#{arch}.dmg"
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
