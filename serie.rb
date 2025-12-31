class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.7/serie-0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "b5384b8a77a3c76112f01e8338635c3aeb89ad946382ecd24f7859d2244c22f2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.7/serie-0.5.7-x86_64-apple-darwin.tar.gz"
      sha256 "3eb62827cf4d4ecf7bbfc932c9f6b6d4c5bffca13ac35a250ef6df01c15615b2"
    end
  end

  def install
    bin.install "serie"
  end
end
