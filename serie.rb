class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.5/serie-0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "d29151ddaacc860b70a9329f5f702cd6fe761f9f9e4ffa1e747e6bd1b4640a93"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.5/serie-0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "e1c4dc51243bf0fbfb2241cf0a5b14ca35788b46d370a1a3821163275126a68b"
    end
  end

  def install
    bin.install "serie"
  end
end
