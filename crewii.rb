class Crewii < Formula
  desc "Role-based engineering crew for OpenCode"
  homepage "https://github.com/trickylab/crewii"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.0/crewii-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7132af3538cfe72a12f95d4a24cb7d7e96b6f5fb35d0877f18fa734366022d3c"
    end
    on_intel do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.0/crewii-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "976fe138ab5a06139a12cbe4718363e47442ee30de73e745e8ccbcf99056954b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.0/crewii-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9f38ce611050ae2a7bd69025676b2ab8786fe3ea68984149d12d11d3776c763"
    end
    on_intel do
      url "https://github.com/trickylab/crewii/releases/download/v0.1.0/crewii-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8e2df06b04f08d655f68a3e2122e853a9bfcdcc9cbf0ea5c4af13da0c376340"
    end
  end

  def install
    bin.install "crewii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crewii --version")
  end
end
