class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.36"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.36/sshremote-linux-x86_64"
      sha256 "5e74352d8ef64f16ca2ef22a3cbc4bdb15b3145572a8afe4ded0e36a6b044f75"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.36/sshremote-linux-aarch64"
      sha256 "59971c19d0dea8c8ea22b6b402458a60ef86333b868908b0f96df5040d76beb1"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
