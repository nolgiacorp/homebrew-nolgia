class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.2.6"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "4ce36a0f80814866273422f07cf0c157cea20d88108b082935421418f2c40250"
  end

  on_linux do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "e1f4cb226f902846c439a271a3150b4a25d66f09efcb9ad493450bf995b1b21b"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
