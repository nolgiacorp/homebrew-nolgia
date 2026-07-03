class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "bf091b13d7f62a8d73c3f89a82ae3e865a2badb406434e3f775be13ad1d1626f"
  end

  on_linux do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "70b34fb6399dbb86bee6ae67c2b2b4b460f180a8df420dcb4cf1eadf834fbe62"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
