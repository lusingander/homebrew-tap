class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.4/serie-0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "24ab9ad0ef4e140f2044a57f3020918f16bb38e495f645e5c651c368c74ac1c0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.4/serie-0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "75ccde75361e417787e6ab1b74fb4035de8bcd2b0b1874c1a506c9612369a5d2"
    end
  end

  def install
    bin.install "serie"
  end
end
