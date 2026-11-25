class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.37"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.37/sshremote-linux-x86_64"
      sha256 "dd2184d3427cee11a15c8a696a809dd2c310602d6635f0e1cc666f49a119e2ae"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.37/sshremote-linux-aarch64"
      sha256 "87836a0f2e15f903e452e5a6cd00d6179ca8395d3f63a3328dbf3ea4c963deda"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
