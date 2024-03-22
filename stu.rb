class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.4.1/stu-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "ff7cd872030ffba04b61099254986b6b34bae6ad6258939dcc039c0224e4d6cc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.4.1/stu-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "f19929076ee2383f6021e4e52b8ebb4c3a155898032ed2a8f20544dbbcde7243"
    end
  end

  def install
    bin.install "stu"
  end
end
