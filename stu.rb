class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.4/stu-0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "1afae49b4b08754be674569a0daf8538aeab97232a4acfd81840eb65a938bf8e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.4/stu-0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "a0a5a19760509e35d54b695efe2398f9d4e359abbbd68a2b4ae54112774bab40"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.4/stu-0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afce77347e836311404d62b4daa0e84fbd65e49e4635af94123e4c0df12102bf"
    end
  end

  def install
    bin.install "stu"
  end
end
