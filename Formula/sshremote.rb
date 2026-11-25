class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.41"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.41/sshremote-linux-x86_64"
      sha256 "42704382a0426493e47f1339ef8150a16bc594eeb92b01b6d2c8fd2b040b9d81"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.41/sshremote-linux-aarch64"
      sha256 "97d681ffa20b877a7d000078616d75c8585086963c56bc11e596de977a5095da"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
