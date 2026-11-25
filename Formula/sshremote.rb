class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.40"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.40/sshremote-linux-x86_64"
      sha256 "ac6893e18d709a5423ac8a542e593bf0e396bf8f8223d96f54d0ec6fe026fcea"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.40/sshremote-linux-aarch64"
      sha256 "1f54e2c40a2f6ec304bad55bada6f89dd0e2f555b8a9d8a24b5f6b1583db72e7"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
