class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.51"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.51/sshremote-linux-x86_64"
      sha256 "e4878742838f110861f2172bdc8db5e002e0897685640ec433d28a67107e12e0"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.51/sshremote-linux-aarch64"
      sha256 "cbf938e5587c7178dbc78814dc24e8dde190453351eab6e699046d9d2b1173e1"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
