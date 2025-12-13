class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.5.6/serie-0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "f96c18284200b6ef474ec1773d77c668f7a00416307b05823b56f6e9b0c738b0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.5.6/serie-0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "eb214091be8e7252be6637d956aa2ca447e4626c4c4cce9067ebf9f9232e7374"
    end
  end

  def install
    bin.install "serie"
  end
end
