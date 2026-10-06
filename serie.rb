class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.9.3/serie-0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "48f576e036df76b0c4ebf9c40af0e0349b349a533c12c7e61e225d3020cd3c29"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.9.3/serie-0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "f140e65f0cf3336a89750ba5320817f64771cf914e4feb56e516481368c93e11"
    end
  end

  def install
    bin.install "serie"
  end
end
