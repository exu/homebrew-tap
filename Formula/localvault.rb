class Localvault < Formula
  desc "Local secret vault unlocked by password, with agent-safe output redaction"
  homepage "https://github.com/exu/localvault"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_arm64.tar.gz"
      sha256 "3d14e70532fe4134528405dc90a9f63ff6fc61b3b08082dc936ca375417b0e5e"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_amd64.tar.gz"
      sha256 "6af6ffbd1cfac524d5e5fe62c6533b352555f331d636ab01ab9bb1fef24ba488"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_arm64.tar.gz"
      sha256 "ad6f2c53d8774dfa5f60e34b3ae367c070556f2ec46209c8fd7d31c7ae72b13a"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_amd64.tar.gz"
      sha256 "11ea55e5d8e3c860cad0b15eae9f8cdfa3b7213ba1e072abdb57ecc6c6855fd0"
    end
  end

  def install
    bin.install "localvault"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/localvault --version")
  end
end
