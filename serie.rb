class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.1.0/serie-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b8b7457f8b017a2b5d64ac908869084a56416a41470c3e0ab8dd48e910c219ed"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.1.0/serie-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9c64ba4cf0f947614d48561ff3301c34374c84159ef3b583094c1f9480ea976e"
    end
  end

  def install
    bin.install "serie"
  end
end
