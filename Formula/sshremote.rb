class Sshremote < Formula
  desc "One workspace for all your servers and projects"
  homepage "https://sshremote.dev/"
  version "0.25.48"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.48/sshremote-linux-x86_64"
      sha256 "432f44b5be3188b1e824c8db3579a7a087f43c94a28483f0003895c6ffd8d585"
    end
    on_arm do
      url "https://github.com/sshremote-dev/sshremote/releases/download/v0.25.48/sshremote-linux-aarch64"
      sha256 "adcbbde3b3a72f3551c1a95e6ca1ecc20b2816868b70ae93b2365bf8569a9674"
    end
  end

  def install
    bin.install Dir["sshremote-linux-*"].first => "sshremote"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshremote --version")
  end
end
