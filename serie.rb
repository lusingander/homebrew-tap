class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.6.0/serie-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "661af0cd2f65bb7bfbbd4581ce7eb4b03bf0988f8980b2298ff8f22018c9f371"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.6.0/serie-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "dab61bc3e4b15699c578279957b2605ce149c0aa4be133f6c95b09fbf8228f01"
    end
  end

  def install
    bin.install "serie"
  end
end
