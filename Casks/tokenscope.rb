cask "tokenscope" do
  version "1.6.5"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "e318e45e19d7d6007ea187d39e0fbebc205991121eef51547a29f23925d0935e", intel: "ed37fc1cc29451e27ca9dd1cc60c6b2cb4570ac87592a91e09e0fd1c0dafc922"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.6.5/Tokenscope_#{version}_#{arch}.dmg"
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
