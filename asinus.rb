class Asinus < Formula
  desc "Terminal Color Theme Explorer"
  homepage "https://github.com/lusingander/asinus"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/asinus/releases/download/v0.2.0/asinus-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d08919bb4ff3d2e883a08b51021314278e0cef61e15e80da4bb5e9a003f7296"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/asinus/releases/download/v0.2.0/asinus-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "568804182275580cf2e022e7739870ef4d2966f7876795bacad9eea358b3c54f"
    end
  end

  def install
    bin.install "asinus"
  end
end
