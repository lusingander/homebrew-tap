class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.6/stu-0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "422ab30d3fdec8f0e1b073ab84b4f91491198b90fce98ee915139d0116564321"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.6/stu-0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "b6af779ae1ff588288b848bcf5e023b9abbdb5aa44d8b3afecc62187d68321a9"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.6/stu-0.6.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "37da63400ce8e6cedbce73b71038d9bf60f2c561ce5ab15c09080dcb48188c02"
    end
  end

  def install
    bin.install "stu"
  end
end
