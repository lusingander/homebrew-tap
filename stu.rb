class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.0/stu-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "153615b8a96493d42ae34f2948951a82acba554e7535437e46b3b448d432980a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.0/stu-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "ce0c5318c5ce1247345e4921a4dc052198cf5ae8897ccebc70925cb3875e0a69"
    end
  end

  def install
    bin.install "stu"
  end
end
