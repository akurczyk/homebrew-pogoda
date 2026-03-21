class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.8/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "0224aa4b1663a541dd9bd05c3d626cb24ade5028fcf189de4e069b4e1d4a3e46"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.8/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "15eaad07bc58183f1b561070fc25931005f8fd92b6cd0f1c10c7a0165fd12962"
    end
  end

  def install
    bin.install "pogoda"
  end
end
