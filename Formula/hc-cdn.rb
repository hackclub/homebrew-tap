class HcCdn < Formula
  desc "CLI for the Hack Club CDN gateway"
  homepage "https://github.com/hackclub/hc-cdn-tools"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_arm64.tar.gz"
      sha256 "33c94deacb89ab212ed36bdce93f9b4e011a8d4c6ee25b68a902ea58398bb4e5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_amd64.tar.gz"
      sha256 "708c5016142a32a3c96d4d8bffd72e76a2eb10a647a1ea13ec8c1b72d1e7974c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_arm64.tar.gz"
      sha256 "69aa4ac96b213656227f8e69ce025acc657560d3cec882e2fc9bac87336be0b0"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_amd64.tar.gz"
      sha256 "a015e7f1223ffd4793588fb4ad401d32342188e73fb1d6ea3e0e7ef7ebdb36ba"
    end
  end

  def install
    bin.install "hc-cdn"
  end

  test do
    assert_match "hc-cdn", shell_output("#{bin}/hc-cdn --help")
  end
end
