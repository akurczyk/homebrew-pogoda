class Pogoda < Formula
  desc "Terminal Weather Forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akurczyk/pogoda/releases/download/v0.6/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "1ed7a11fddc965db0f7331007caef42223c736f8cd47e7b90772605ecf70fbb7"
    else
      url "https://github.com/akurczyk/pogoda/releases/download/v0.6/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "ecbbb184173867eb8bb62d0458459cf814b4588e7a6c3481cb9ae9a2ecb14378"
    end
  end

  def install
    bin.install "pogoda"
  end
end
