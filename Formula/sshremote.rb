class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.26.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.26.0/sshremote-linux-x86_64"
      sha256 "748b8f26f352706ff4c0a2521f924f16826e762424c96d7f68fae504a9f5f833"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.26.0/sshremote-linux-aarch64"
      sha256 "a010c389ed7e2c33d03db923a7980773d0cf3f5248420ab7f45db38933e1fb06"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
