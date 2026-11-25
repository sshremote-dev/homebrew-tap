class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.38"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.38/sshremote-linux-x86_64"
      sha256 "5de34a346a746e87d413b11a50eb128867bd3a8a8559b0904f1d8ebb90fe16af"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.38/sshremote-linux-aarch64"
      sha256 "75bfdbffb6da680cd521460919292e73b4b59b731a29ac1e202881d632375074"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
