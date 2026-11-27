class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.28.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.28.0/sshremote-linux-x86_64"
      sha256 "9fa6bb8f644f63c5b04ef02f2d1cfa07405709cc4dfac5a3faa07fffff3538be"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.28.0/sshremote-linux-aarch64"
      sha256 "9addefc22ff8069b5b6b66d719bedaec0000aa3ed5647e0297126b4b5eef365c"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
