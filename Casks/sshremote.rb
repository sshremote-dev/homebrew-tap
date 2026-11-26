cask "sshremote" do
  version "0.25.47"
  sha256 "335a54d71480d056706404764409b23c18dfce7b388e3430c6d4ef3780d0f139"

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
