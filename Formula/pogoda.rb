class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.11/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "ecb14e29b9432a6d40ff2788b16133f598e6dc462bef8dd25a3950f2498edede"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.11/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "c19ced3abb2fdabac7f5146a24f8072596ee709cf0ef73e71ec7284933fafe12"
    end
  end

  def install
    bin.install "pogoda"
  end
end
