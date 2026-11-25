class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.44"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.44/sshremote-linux-x86_64"
      sha256 "7f039e62afc094b695d6721bfd26c206a6e2031dd344963f70d7f310e3591f6d"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.44/sshremote-linux-aarch64"
      sha256 "1a2bff96d5bc9d7ad2cd7e5c8a172d789a80eb04207d8d35e77c2fe99bfc2052"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
