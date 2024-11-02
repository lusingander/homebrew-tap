class Stu < Formula
  desc "TUI application for AWS S3 written in Rust using ratatui"
  homepage "https://github.com/lusingander/stu"
  version "0.6.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lusingander/stu/releases/download/v0.6.5/stu-0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "1d615cf0d859d1fc4d91b3a27ab093d9b0d7e817f540b08e4cdbd6391a1cc08c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.5/stu-0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "c81f1fd38cc555d4141396058ba96ffcafcab238c176789d1ad2bc03f76c9fc4"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lusingander/stu/releases/download/v0.6.5/stu-0.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cccde1c71d86ab52e94801fa949fa86e99efcffe43d72a74fe8d0b42021faa9"
    end
  end

  def install
    bin.install "stu"
  end
end
