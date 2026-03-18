class Pogoda < Formula
  desc "Terminal weather forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.4"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.4/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "d7ce7e5e235cbe4009c209775c930cd47b4c8d57b3f15b537858c3289d953623"
    end

    on_intel do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.4/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "160724530c864412b6e3ca6f2bd76471e1952f9851e23a8697cc8eef65164728"
    end
  end

  def install
    bin.install "pogoda"
  end

end
