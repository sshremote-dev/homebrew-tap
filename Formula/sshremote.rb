class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.42"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.42/sshremote-linux-x86_64"
      sha256 "3f5c0d5a1aad73c440e3c3fa506e9ee49ce5822f682c262b25216da3f51db8e9"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.42/sshremote-linux-aarch64"
      sha256 "7b6c4ed85e049a712e25c176c1ec3ba0be58e3e2dbce4483dd95cd81f2c592e5"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
