class Localvault < Formula
  desc "Local secret vault unlocked by password, with agent-safe output redaction"
  homepage "https://github.com/exu/localvault"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_arm64.tar.gz"
      sha256 "3bf0be2dfbae081da721fd543283206ab85f2ca0e3ec9055ae6f87a7ff02965d"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_darwin_amd64.tar.gz"
      sha256 "cf0bbb1735edb0ad845081abb041b5448b5e83e0df2e22af511851ed5e5a5ef1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_arm64.tar.gz"
      sha256 "ec87b2943a296c676322fb70eb64375dcc0abc7137d93c4779a05aca4a515190"
    end
    on_intel do
      url "https://github.com/exu/localvault/releases/download/v#{version}/localvault_v#{version}_linux_amd64.tar.gz"
      sha256 "29501c50b52d12ef59ea8d1a318d31397c7ff93a04eaf35f806b02404b75df1f"
    end
  end

  def install
    bin.install "localvault"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/localvault --version")
  end
end
