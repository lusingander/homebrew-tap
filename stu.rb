class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.3/stu-0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "28be79bc698ac446c344b62e27be254cc1e5a143330c8d5be7e705f032bb5bb6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.3/stu-0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "7670dc164a462df342c2ffd90ea8f9b72279cebf6fb60156e09882d6d3251cc4"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.3/stu-0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f42ee39199d72cbca4633c6f49267a44fb726a90112de8e4212b4e458933bf8e"
    end
  end

  def install
    bin.install "stu"
  end
end
