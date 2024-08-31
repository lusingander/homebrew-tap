class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.2.0/serie-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "72d16f0e047829b1c67c2ff954a13f4e388fc133b2be01d23f07ddda9185fa30"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.2.0/serie-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7f6e5ce8cbc9311e79703b8dac2663d1ae988e8be5e9a6615f532ef141ca37af"
    end
  end

  def install
    bin.install "serie"
  end
end
