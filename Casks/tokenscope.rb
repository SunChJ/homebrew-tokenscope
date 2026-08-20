cask "tokenscope" do
  version "1.6.4"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "d8bce7cc6c888fe2623e981c873819f2349774540a610a6f4d81cdfe9dc952bb", intel: "fb9795e9ce4e281208d97efc9c82666eebc517ea49b481808d76abc7e95ffd3c"

  url "https://github.com/SunChJ/tokenscope-remix/releases/download/v1.6.4/Tokenscope_#{version}_#{arch}.dmg"
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
