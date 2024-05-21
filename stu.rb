class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.4.2/stu-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "b8b3819aa480bd342bcfa7bfe08d1cca3658b518b45531dac540eb613c88b3cd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.4.2/stu-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "da1d9240243c3d27431a9aeb9d485c047a1119358f384da2b240079e772c04b4"
    end
  end

  def install
    bin.install "stu"
  end
end
