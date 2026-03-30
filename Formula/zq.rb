class Zq < Formula
  desc "A drop-in replacement for jq, 25x faster"
  homepage "https://github.com/Enriquefft/zq"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-amd64.tar.gz"
      sha256 "185e83e7fc3f1cf36edb3aa55a87deba4fa51a68f77e9ec1db56aff00a9f1650"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-arm64.tar.gz"
      sha256 "5aff9906b701d8255e9ce9f0a96567853a6557dc028e2dc8e220fe7b4cee95d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-amd64.tar.gz"
      sha256 "681958a76f3ea5456295be76f96ec66c8f2f63a21e27c0144960e087ea873ed2"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-arm64.tar.gz"
      sha256 "b76916b3f1bda9c0f090ebd5b61036906806c79563a6b1be876d97e07ff7ffbb"
    end
  end

  def install
    bin.install "zq"
  end

  test do
    assert_match "42", shell_output("echo '{\"a\":42}' | #{bin}/zq '.a'").strip
  end
end
