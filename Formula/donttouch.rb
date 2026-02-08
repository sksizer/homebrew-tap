class Donttouch < Formula
  desc "Guard files from modification by AI coding agents and accidental commits"
  homepage "https://donttouch.sksizer.com"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.8/donttouch-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "02bb977d7ed62507f3692ec64bc62b99d922d61b4cab29a4074309dca076c3c2"
    end
    on_intel do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.8/donttouch-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "57265c21d4890b3f4811d10c84f37091a8cbc75b621a72d1e352a9bc1034dc75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.8/donttouch-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "355935caed3e2ff3c41cdf63c80d0b68aec51b7162268f1726e4067399323043"
    end
    on_intel do
      url "https://github.com/sksizer/donttouch/releases/download/v0.1.8/donttouch-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4047c10f7c86d448c3b2f61ce45541568b14253d2b8b4bef8b79b8aa95b38b8c"
    end
  end

  def install
    bin.install "donttouch"
  end

  test do
    system "#{bin}/donttouch", "--version"
  end
end
