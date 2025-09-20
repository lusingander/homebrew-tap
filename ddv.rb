class Ddv < Formula
  desc "Terminal DynamoDB Viewer"
  homepage "https://github.com/lusingander/ddv"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/ddv/releases/download/v0.2.0/ddv-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "27e8764bc4dbecd6999ee6ad9bb5a0feab4a42274a4e94fd033f836c6940dcfb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/ddv/releases/download/v0.2.0/ddv-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f0bde62ade10c6021922d9fdfb2ec81b6733abb8a2c14eaab4ee8b48b41bf57c"
    end
  end

  def install
    bin.install "ddv"
  end
end
