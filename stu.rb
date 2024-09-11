class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.1/stu-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "bef07fdd6b1bbba0213bc5f27b56b5097d616594ac0f5fda1c9ec91874357fe5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.1/stu-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "54bcd71728b83919e039c914cac380d1220cac6c1868fee1d39a5b462e8af899"
    end
  end

  def install
    bin.install "stu"
  end
end
