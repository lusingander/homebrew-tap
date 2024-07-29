class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.1.1/serie-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "f25b722900fb9a09edb1e521db69ec9d79daad66cb46c3298229617142cc69fb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.1.1/serie-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "f36d6b9cd3e66319e904bde8e6664595a053d75e6093bb27347f6e5798fe285b"
    end
  end

  def install
    bin.install "serie"
  end
end
