class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.26.2"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.26.2/sshremote-linux-x86_64"
      sha256 "fe027c593f2ca309df9b538fb6c586d146bdd0858d242d0faff05035fe393192"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.26.2/sshremote-linux-aarch64"
      sha256 "90eab1c874755708d349338cfbdbe985396886263c5e8be2797520902f5665f1"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
