class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.32.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.32.0/sshremote-linux-x86_64"
      sha256 "07695acbd29f85aacdb35b3397c26e10db7ca78fff8cfa25411f792a02a7b7de"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.32.0/sshremote-linux-aarch64"
      sha256 "994484aff3559c3d069b50252c7181f2585d50065ef749fcc5ae5bd7622caf89"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
