class Pogoda < Formula
  desc "Terminal weather forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.1"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.1/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "30faf4a6b114ab280a4b83c3b1a4064c1a7a74a368c57fe51da630c1e7f2554e"
    end

    on_intel do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.1/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "c1ebd381f35034b64bc7a3ac01d3596307ac85f3a5049b6104b3d1f53e61948f"
    end
  end

  def install
    bin.install "pogoda"
  end

end
