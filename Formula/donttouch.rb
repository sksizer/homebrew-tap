class Donttouch < Formula
  desc "Guard files from modification by AI coding agents and accidental commits"
  homepage "https://donttouch.sksizer.com"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.9/donttouch-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "d78a6300d900cc99f862bb2039add4a4d9f490626aa909db0e09974c6fcfcb33"
    end
    on_intel do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.9/donttouch-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "79557f525ea6bb8d5f79c72fe6e8a04da853a2579e64d1d8ade3a44e07a92833"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.9/donttouch-v0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d59cd1c3ffe71fa8c806f4b868e6de9743cb2594b7f98353374aab6956985f19"
    end
    on_intel do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.9/donttouch-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0143672212a706f66afa15acc3dc524d23b10c6dfe05722e9fd2c9b9e111a6a"
    end
  end

  def install
    bin.install "donttouch"
  end

  test do
    system "#{bin}/donttouch", "--version"
  end
end
