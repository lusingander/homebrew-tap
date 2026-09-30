class Serie < Formula
  desc "A rich git commit graph in your terminal, like magic"
  homepage "https://github.com/lusingander/serie"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/serie/releases/download/v0.9.2/serie-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "ef5c8c1942b0838c17ccdfb2c73ed0eed7bbb8253154edd4a34fc8d2b91c7189"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/serie/releases/download/v0.9.2/serie-0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "8f0f96a4603e9f579f49d192c78e6889292f1b0b4095ebe84fc8661c28acdc3b"
    end
  end

  def install
    bin.install "serie"
  end
end
