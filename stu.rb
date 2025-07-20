class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.7.3/stu-0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "b758d801c7e9bbfec625e93da34cf29220a05118c24660bad9d2691b478e9e7d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.3/stu-0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "ee9a65bd6a52443342b1318bf3a1077367de10bbf8c16f22a3bb52dd342794d7"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.3/stu-0.7.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31bbcc44d925e8d4183526974cef4c19831bb1819b690190a8f061ba18c25c50"
    end
  end

  def install
    bin.install "stu"
  end
end
