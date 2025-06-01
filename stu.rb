class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.7.2/stu-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "0198fc4d1b1366dcd724258934efd5ae20d073c6ccc20506c54ea91ec5b64405"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.2/stu-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "09e080e459353912da27bd8f09f23f3c2edf725438be6c8566e7828ec54fed6c"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.2/stu-0.7.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d75f43fa0b04a5fb3b192bee9a96cf8a1dedb24f00701bf9fc4f9d9d64aff586"
    end
  end

  def install
    bin.install "stu"
  end
end
