cask "sshremote" do
  version "0.25.44"
  sha256 "6934cfafddeaf74cb985597f9a4bea26ecc77ede38f2aa7ce47476a92f7a623e"

  url "https://github.com/sshremote-dev/sshremote/releases/download/v#{version}/sshremote-macos.zip"
  name "SSH Remote"
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"

  depends_on macos: ">= :monterey"

  app "SSH Remote.app"
  binary "#{appdir}/SSH Remote.app/Contents/MacOS/sshremote"

  zap trash: "~/.config/sshremote"

  caveats <<~EOS
    SSH Remote is not notarized by Apple. The first time, open it with a right click and Open, or
    allow it under System Settings > Privacy & Security. `curl -fsSL https://sshremote.dev/install.sh | sh`
    installs it without that step.
  EOS
end
