class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.49"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.49/sshremote-linux-x86_64"
      sha256 "134fce219c7e7a67ce49abd11942c9da3d59b81340cf6df9a447f1b4448f21c4"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.49/sshremote-linux-aarch64"
      sha256 "f30514158cefed2821a635f6d321c85bc15c252c553395ff2da07d39caf79d4b"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
