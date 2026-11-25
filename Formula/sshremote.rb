class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.43"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.43/sshremote-linux-x86_64"
      sha256 "8474051aca792e839f0f556c1a5a046360203a48735498c1e0a1a9d4a0c90d0f"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.43/sshremote-linux-aarch64"
      sha256 "0a29c24fd35992ff236f6a705a473df2fe144a656192f0b5428c9657af7bb9a2"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
