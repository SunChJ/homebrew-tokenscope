cask "tokenscope" do
  version "1.6.2"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "028c2cfb167ad81102668484daa0f761bee3d9bce557ce2179910febc1425c78", intel: "a1adbe8ae20242952711b7dc829735c8993890175a59b6e52cbcb11f19c56a8e"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.6.2/Tokenscope_#{version}_#{arch}.dmg"
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
