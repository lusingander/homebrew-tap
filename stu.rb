class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.4.0/stu-0.4.0-darwin-arm64.tar.gz"
      sha256 "4b2db10ea00374bf3ff52f4bba12939fb4fd6743ac4cc95d718805c297f10eaf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.4.0/stu-0.4.0-darwin-amd64.tar.gz"
      sha256 "c26de346d02734ac61d7947c5923e8d7c0b466e71a3085cd4082d8f934dfb355"
    end
  end

  def install
    bin.install "stu"
  end
end
