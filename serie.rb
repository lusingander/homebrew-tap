class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.8.2/serie-0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "eb701ed5af82d4d29ed2c41be747b7d3ed132b9f2d1e5a020ddcf3f98f3bedda"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.8.2/serie-0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "5614f7b7567ffff3e4c9984091c446ebd7b79e2e60fec76c7c0db0aefc60938c"
    end
  end

  def install
    bin.install "serie"
  end
end
