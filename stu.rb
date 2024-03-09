class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.3.0/stu-0.3.0-darwin-arm64.tar.gz"
      sha256 "b1913bd80a373b36a082bcbc9628eada788c7f23b792b7efcd79a93bdcfbdb3d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.3.0/stu-0.3.0-darwin-amd64.tar.gz"
      sha256 "4c5c1377a11c83000c3a45ee67593c7cbce7f7c0e4c80e2155b1a9f7d38c2804"
    end
  end

  def install
    bin.install "stu"
  end
end
