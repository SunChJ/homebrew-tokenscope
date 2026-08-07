cask "tokenscope" do
  version "1.5.5"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "f6d98af917d3f347c05ed5c571dc204af39dc40a12f3f6a5af9aa7e1a3583a58", intel: "549735822061fec186fc30104ed469cd376fb8bb63fb8fd2959966e5ce524830"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.5.5/Tokenscope_#{version}_#{arch}.dmg"
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
