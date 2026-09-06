class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.9.0/serie-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d4407b485d06956c487eeeaafc8e560a442bc0ab7a5fd1404cff03a7d9ba285"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.9.0/serie-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "bab507a875c353a8a3c753354006d817ce4821f37ea56926a21af5d4305c336d"
    end
  end

  def install
    bin.install "serie"
  end
end
