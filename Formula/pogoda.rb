class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.10/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "e4cf42de3b4be8c4b6c73f8786093a7e0dc439f57ccbc57cf632bd2edd5023ca"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.10/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "5f1c564e3e90ef761890f6f3a772e0fcae586403955f6919da4d75f02459dea5"
    end
  end

  def install
    bin.install "pogoda"
  end
end
