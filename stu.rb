class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.7.1/stu-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "56de2fe5586854d69910705bf552e01cedae32358636142c98310adefc5be821"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.1/stu-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "8390903b1b3a7a987059c1b62a2325f65bcc5ad310abaf3add42edb07d02bc32"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.7.1/stu-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "364a42ab9dcdc9acc17da7640f94d75dbc630a66145d0d3b9c00cb3bcd85c317"
    end
  end

  def install
    bin.install "stu"
  end
end
