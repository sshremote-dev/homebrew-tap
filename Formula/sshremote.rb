class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.46"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.46/sshremote-linux-x86_64"
      sha256 "ead90f5bf78d572569e224e1e966748c5ebc97049752aa6ad8fe6ec42968e1bd"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.46/sshremote-linux-aarch64"
      sha256 "26a766b40ef609592bec542a4d6c65b177415cd8279155253331cba53c8d0097"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
