class Zq < Formula
  desc "A drop-in replacement for jq, 25x faster"
  homepage "https://github.com/Enriquefft/zq"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-amd64.tar.gz"
      sha256 "46143ea663054e5df942d4844ef4691ef5e1c2ff473e778af275f64d521bb518"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-macos-arm64.tar.gz"
      sha256 "2e384b84da9f4376975bc63cebf1435888ddbb7392312a6e6770a9594d3536aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-amd64.tar.gz"
      sha256 "a48afe7884a78e89ce6554a64b50068fcf22dba91038f855341b48b3a02a87a3"
    end
    on_arm do
      url "https://github.com/Enriquefft/zq/releases/download/v#{version}/zq-#{version}-linux-arm64.tar.gz"
      sha256 "8e81242ca9358f6dd6e46a06e31ce0c1150d6a3d1717fabc411c74a8e2f401bb"
    end
  end

  def install
    bin.install "zq"
  end

  test do
    assert_match "42", shell_output("echo '{\"a\":42}' | #{bin}/zq '.a'").strip
  end
end
