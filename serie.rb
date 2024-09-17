class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.0/serie-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "9b75ddfbeae52c9915b80809f5898fead863b609e4123516e53d88bf7397fe8c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.0/serie-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c560542e837a364c4fb13668aa82a4e06b61236a4ac4531619624ac0d879016f"
    end
  end

  def install
    bin.install "serie"
  end
end
