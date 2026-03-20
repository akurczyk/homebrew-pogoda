class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.7/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "6fabe6bf8a3786961170753157fc01af7d481df095936f1227c287e8f433cdba"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.7/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "ad19333906620429fcd396bad411075e2b3ab69ac0ad68fe2ebf3ef23869617c"
    end
  end

  def install
    bin.install "pogoda"
  end
end
