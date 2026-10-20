class Localvault < Formula
  desc "Local secret vault unlocked by password, with agent-safe output redaction"
  homepage "https://github.com/exu/localvault"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_arm64.tar.gz"
      sha256 "d1eb6c3506c150c9b1c9867ab764f51a8d078e1f75da4d11395732645610af24"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_amd64.tar.gz"
      sha256 "e1c10b9c6c5c67240e1354b3e1ad8e924ee31dfa39975f54d9e11c92d1dd2e67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_arm64.tar.gz"
      sha256 "7e4ef0c103b52915f60f9a10575e8a0bbaf324e4a896d3334ea62192cd02305b"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_amd64.tar.gz"
      sha256 "1933ebd4419067e944e47579d7d3e9e5c04292d8410c6b5456234c99825ff1c1"
    end
  end

  def install
    bin.install "localvault"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/localvault --version")
  end
end
