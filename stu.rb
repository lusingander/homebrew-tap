class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.2/stu-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "da8928ea75f0b75fb24466c2757d3f01d2ccef540dffa5cf0d203732491e2c39"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.2/stu-0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "c337151425c357c65d26c19458c6a4daca6e516c8b162d020e82da3c133dde10"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.2/stu-0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8679a530811df18f51a9e32c8ebef71e6a0b063130220bf969bf4f1b953a9ec2"
    end
  end

  def install
    bin.install "stu"
  end
end
