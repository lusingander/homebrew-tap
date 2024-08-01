class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.1.2/serie-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "43f9f90ab525e60a07cfa110a75d0c0bb0599703f80795d795d8a1c1add23552"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.1.2/serie-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "d0aaf262cf53c8bd8536af23b31a398677a2b9b87005d6f0d2246cd430c21a83"
    end
  end

  def install
    bin.install "serie"
  end
end
