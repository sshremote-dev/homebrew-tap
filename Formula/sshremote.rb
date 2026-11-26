class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.50"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.50/sshremote-linux-x86_64"
      sha256 "4ada141e20f28985c9ed1899d0fc11af02c78e2742002060d6789dd7c1db01e9"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.50/sshremote-linux-aarch64"
      sha256 "c7321e60f95480c896ab9932a87588991f3cb0afe3a8f2ce95456ab1aad62286"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
