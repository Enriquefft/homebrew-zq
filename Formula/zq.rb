class Zq < Formula
  desc "A drop-in replacement for jq, 25x faster"
  homepage "https://github.com/Enriquefft/zq"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-amd64.tar.gz"
      sha256 "8513a23905553673dff4666da829540673bc1d2c8353d8848a44df5109e5e6f7"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-arm64.tar.gz"
      sha256 "f72793c3a1c0474f95909088bf5e69b8a492fd58dd90b94b5b94c26e11418312"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-amd64.tar.gz"
      sha256 "bbea720970c0efd00ab02fce11ae5f091337485c00623c2d278aa2c5e469133b"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-arm64.tar.gz"
      sha256 "f846e06c4255e1c519e4b48baabab9a3e2902ab77a8c2de837e5ee73482b365e"
    end
  end

  def install
    bin.install "zq"
  end

  test do
    assert_match "42", shell_output("echo '{\"a\":42}' | #{bin}/zq '.a'").strip
  end
end
