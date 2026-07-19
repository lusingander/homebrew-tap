class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.8.1/serie-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "d4899ddc32b7227e387c523cf27ad6171f29b4f69097524304f190985dbafe49"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.8.1/serie-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "43b1eaab104ec295c4d07d381f9e96bb321d322ef78518a87853776bc0912f2a"
    end
  end

  def install
    bin.install "serie"
  end
end
