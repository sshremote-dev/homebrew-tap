class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.47"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.47/sshremote-linux-x86_64"
      sha256 "ecc787459a9cbdc25cf13084bd9c04f7916afacac5b7d96f083c120a26539649"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.47/sshremote-linux-aarch64"
      sha256 "8e9b52c3aad61629fc76ab82ea9cfdf87d3dbbdeb4661d216ea002740dbb61a6"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
