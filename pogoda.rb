class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.5/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "a0018c6e01cbbdd3c2905e8720de229a406e6b45633a3767eda4bf9e2992b085"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.5/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "44e0d13da69dbf919fc798396b724c67813ac305a5642294f06c96834ae6e155"
    end
  end

  def install
    bin.install "pogoda"
  end
end
