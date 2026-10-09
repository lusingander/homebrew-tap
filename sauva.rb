class Sauva < Formula
  desc "Terminal Unicode Explorer"
  homepage "https://github.com/lusingander/sauva"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/sauva/releases/download/v0.5.0/sauva-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "251b3fdf3efcc9e9a9be75930e82c92b494dbfcbaf02c1277ae256505b8e5d58"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/sauva/releases/download/v0.5.0/sauva-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "bb509630829f8a3161d21a6365b1dbfd773034db647f9c1fde4a51d0cb9d8df5"
    end
  end

  def install
    bin.install "sauva"
  end
end
