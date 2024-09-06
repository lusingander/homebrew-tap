class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.5.2/stu-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "69c08968bb3f93d22d6852c571c2551063a20af2c7ce8907042e3b125f22698c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.5.2/stu-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "5e95813961c794aa6790d68409643d272a0076144d9a10da63c2846624d009df"
    end
  end

  def install
    bin.install "stu"
  end
end
