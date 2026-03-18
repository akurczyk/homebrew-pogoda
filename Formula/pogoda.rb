class Pogoda < Formula
  desc "Terminal weather forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.3"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.3/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "628cb24671127b3fb0072d332206249bfecfa9a88cc925a0cd0daeb090f1850f"
    end

    on_intel do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.3/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "8ae5e059010ab98bf974d5e2338c70a89d98f35272507b283dfe39c51b933fda"
    end
  end

  def install
    bin.install "pogoda"
  end

end
