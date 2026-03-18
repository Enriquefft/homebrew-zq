class Zq < Formula
  desc "A drop-in replacement for jq, 25x faster"
  homepage "https://github.com/Enriquefft/zq"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-amd64.tar.gz"
      sha256 "d5533b69802933081161d8a574391b71fae34bfd2b3cf7e18177cd0aa7679172"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-arm64.tar.gz"
      sha256 "7f1086e6da2bf500daf86931931a54008695de394e9324509507e845ed02971f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-amd64.tar.gz"
      sha256 "3a5fc4ba359a284e0d1fb67fc628c44726dcdd872772c0c74ace86c003547c00"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-arm64.tar.gz"
      sha256 "f418023e891c50ac4b5f0941e448be27843b9e6ed70b75a660bce6bf95139fae"
    end
  end

  def install
    bin.install "zq"
  end

  test do
    assert_match "42", shell_output("echo '{\"a\":42}' | #{bin}/zq '.a'").strip
  end
end
