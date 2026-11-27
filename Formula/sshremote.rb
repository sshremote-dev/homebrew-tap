class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.31.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.31.0/sshremote-linux-x86_64"
      sha256 "0a949b102e58e2cd5aa6843b1d1efce7c8929ea3bb2b0a4654981c8d2c2e4c48"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.31.0/sshremote-linux-aarch64"
      sha256 "1e3dae2501de4320c34994d6851ef53cd3cde80bbac742e207a31ebd98a1760b"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
