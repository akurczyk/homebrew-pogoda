class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.9/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "f905f2a42469f5d8c77b361d521430a9aa363b42cd4145e3b26255c871e77e0a"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.9/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "183e9dfc4d5ca769dab5c77546ea0d06f639db4b0e04364674e0288a305d2429"
    end
  end

  def install
    bin.install "pogoda"
  end
end
