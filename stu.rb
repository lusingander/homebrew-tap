class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.5.0/stu-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "b550a85aa1dd1f7d51d1e72d1fcd882cc52bea6e30c62e8d61bec1f5d817a201"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.5.0/stu-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "9e2b35194ac0d8839f549d4baa92bf383da9c3046bab095beb1725f4623deb06"
    end
  end

  def install
    bin.install "stu"
  end
end
