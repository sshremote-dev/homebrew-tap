class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.29.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.29.0/sshremote-linux-x86_64"
      sha256 "89948d2a812889ccf71a4221bc20d9cbf21d970aac99b075c51b88ca76a3e7c3"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.29.0/sshremote-linux-aarch64"
      sha256 "ee13e0c5f16dba7ac5e3910107b30dcb6c9cbfdaf7c6155014233bef8cad3b47"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
