class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.4.7/serie-0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "98a5181676954f7aa6c460f3e53882ba063a38b5c1bf7c7e403a1f7afea51518"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.4.7/serie-0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "8f2367cb14bf6221400fa2f9f347b291b71c5c4bf5d56a26c5ea4c1cdd2dd4b4"
    end
  end

  def install
    bin.install "serie"
  end
end
