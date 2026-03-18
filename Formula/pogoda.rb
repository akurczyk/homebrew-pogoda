class Pogoda < Formula
  desc "Terminal weather forecast"
  homepage "https://github.com/akurczyk/pogoda"
  version "0.2"
  license "BSD-2-Clause"

  on_macos do
    on_arm do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.2/pogoda-aarch64-apple-darwin.tar.gz"
      sha256 "739d24ec3a0cba81b95da3fc09f7561e65cd3786f673224e579b7f53895d22bb"
    end

    on_intel do
      url "https://github.com/akurczyk/pogoda/releases/download/v0.2/pogoda-x86_64-apple-darwin.tar.gz"
      sha256 "649293468b35ad42e855f8a4bf1b6ba360111426281e940d1bbc049e0ea4030a"
    end
  end

  def install
    bin.install "pogoda"
  end

end
