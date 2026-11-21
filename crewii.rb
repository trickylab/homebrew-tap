class Crewii < Formula
  desc "Role-based engineering crew for OpenCode"
  homepage "https://github.com/trickylab/crewii"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.1/crewii-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "ecc704c1154aea2a430e79ffee55338691d6ad135877efc45baf81a7627ed96e"
    end
    on_intel do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.1/crewii-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "e81116bd33f7975fcda3e148ca6e20feb21240b7f18a8e40c04f37f214178cf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.1/crewii-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2744262bf07569257114847a913478cc553d910d8d9abe615b9684ef1fecd521"
    end
    on_intel do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.1/crewii-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4d8fc783571493455f2cfaabd2d9b166bfa54cc30f8086baa4a9826b6108acd"
    end
  end

  def install
    bin.install "crewii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crewii --version")
  end
end
