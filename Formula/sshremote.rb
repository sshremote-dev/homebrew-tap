class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.45"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.45/sshremote-linux-x86_64"
      sha256 "484f5d5d77d53a1fe4b0a6aa1a8e718991253832a114d0c22d91a12822c5801d"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.45/sshremote-linux-aarch64"
      sha256 "37daa8f2651c96c849b8ceb19c1177f158d2592f7b3b17b3d97b0a4825454225"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
