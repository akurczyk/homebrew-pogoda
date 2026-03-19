class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.5/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "4779cac2d63e2b41d67614aa84d62cdcbc98ea075c91ea8b0b221a5489281f0e"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.5/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "15e99d3470317ed2cffcdf9e93e5e795256b7780b1096194f492712896f4b370"
    end
  end

  def install
    bin.install "pogoda"
  end
end
