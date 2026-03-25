class Lpx < Formula
  desc "Terminal Animated GIF Viewer"
  homepage "https://github.com/lusingander/lpx"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/lpx/releases/download/v0.1.0/lpx-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "33fd052d79863fa73df64ad182a93a150cc2000d16c384bbd31a8227a273a115"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/lpx/releases/download/v0.1.0/lpx-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "16a22c7be67c30dcafa9ef8dd9e013b7fe2d2d41e2da6ddfc17bf98945f44202"
    end
  end

  def install
    bin.install "lpx"
  end
end
