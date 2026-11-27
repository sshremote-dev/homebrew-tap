class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.26.1"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.26.1/sshremote-linux-x86_64"
      sha256 "8740b45ac494d5b7d1bee14dd70ed3bca9da158ecacd2cca2a871e6fc3d346b1"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.26.1/sshremote-linux-aarch64"
      sha256 "c63fddaa47177653008e18a624ac7e63ab8bc8d034aeba1c18379ca7771bed52"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
