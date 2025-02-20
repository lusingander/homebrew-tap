class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.7/stu-0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "bc9d745cd948ea4eb1ea317c12595cd0daafb7ce3db7c99fc1f801833189d36b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.7/stu-0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "88d398d8718016e306757a478c5ae082384f81c6ebb9368cbc0f4fd1b4aa4883"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.7/stu-0.6.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c0bcfceb57290581df1c77f99d9ce19d9919fd7baf82fc53137f16d6ff39481"
    end
  end

  def install
    bin.install "stu"
  end
end
