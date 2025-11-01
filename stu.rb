class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.7.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.7.5/stu-0.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "832a0b4cc82ad5e2c6746b53fa6d7a1726f2ba91cb270162892036212347c50a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.5/stu-0.7.5-x86_64-apple-darwin.tar.gz"
      sha256 "ee4a03444100bd95cf9ffc09a2a091807da1680d9d71b06012ab0eeef128e5c2"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.5/stu-0.7.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64543d88f92c122eba37e2b15a95d9ccebe9336e4b40dc0d5cc0b829389f9dce"
    end
  end

  def install
    bin.install "stu"
  end
end
