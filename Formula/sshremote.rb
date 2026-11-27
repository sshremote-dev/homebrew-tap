class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.30.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.30.0/sshremote-linux-x86_64"
      sha256 "d475ac2512bfe809becd1cc39f20dc3b3f959bc93a3949e067f22dd27f0be231"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.30.0/sshremote-linux-aarch64"
      sha256 "bb3c8255e30ec41f523ce4c8e2bcafb392c8b0e0b200f1b58804d9a692dc298e"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
