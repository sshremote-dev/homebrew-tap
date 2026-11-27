class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.52"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.52/sshremote-linux-x86_64"
      sha256 "bec2b59f004b4a2c7ad56143387ee08cf0aaaf69e487f50f0cbceda7c8158344"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.52/sshremote-linux-aarch64"
      sha256 "b3304ae550b0a374602ffa4bdfa8c4b02cd18b32ad8e5e751700bea282376472"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
