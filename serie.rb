class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.11.0/serie-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "39d0431d2a3f07376244c24a44b122aa457e594ef28f3cc8d3c2ea1022c12b38"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.11.0/serie-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "5280bb5bd4cafa45e23cd3833adcc6d261b2f1cd5595e10568fcf1b4ebfb0072"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.11.0/serie-0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4fe42038d8540eed74104db2483ffa8023d37c21cc58164280f5558f577e25b"
    end
  end

  def install
    bin.install "serie"
  end
end
