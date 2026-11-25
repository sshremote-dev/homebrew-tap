class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.39"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.39/sshremote-linux-x86_64"
      sha256 "f3197d16f97bc3043a3fdbbe429e5c83c87993a4fdc91cc92636df43958270e8"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.39/sshremote-linux-aarch64"
      sha256 "7742c19a4d3ce6e75432d0a148c14e4087e3ea977a161846cf7eaa9620fafb63"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
