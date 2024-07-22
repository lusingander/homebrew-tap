class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.5.1/stu-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "ae32f3d8446e3662e90252889043be92f815c8f8b08a02e57f4c50ecbf78d688"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.5.1/stu-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "d7cece5e4d96cc75c020aa77cbe7e68a2bba0514c3081acea6ad514d58ba5ab2"
    end
  end

  def install
    bin.install "stu"
  end
end
