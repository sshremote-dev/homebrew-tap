class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.27.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.27.0/sshremote-linux-x86_64"
      sha256 "1c06f842475155813c119545e268d24b525a244a418f082780ed8325ee4f496c"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.27.0/sshremote-linux-aarch64"
      sha256 "819b363d3a78311e218f408cf5fcc2a144777c557601fb6e9b8840df3360e0f9"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
