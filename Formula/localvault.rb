class Localvault < Formula
  desc "Local secret vault unlocked by password, with agent-safe output redaction"
  homepage "https://github.com/exu/localvault"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_arm64.tar.gz"
      sha256 "73f6e5858f56716af5d201d4cc50096dc39a2b42842d024cc1a50580858180b3"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_amd64.tar.gz"
      sha256 "75a865f42d3e95fcff66cf51577560f1bdddaae87a64a7b98d0e5d22e8d864a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_arm64.tar.gz"
      sha256 "6f3893f422c1684c6e63587b9c1b92afd72b4199081e8381fac6297aecd9fbbb"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_amd64.tar.gz"
      sha256 "68d3c93e6f67ff2e25ea03ab95a5061037dd98c63b9ef35d12b6da001d60b40f"
    end
  end

  def install
    bin.install "localvault"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/localvault --version")
  end
end
