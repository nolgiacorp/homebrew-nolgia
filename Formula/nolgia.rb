class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "cb9e7e9387ba7d7af4b725d9fec1cefd8d718825fe38f5cb7ad8eafc9c931f77"
  end

  on_linux do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "dbab14a6da231f207c49780a620cdea20a2786c9e055be91f382e1f03badcc3f"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
