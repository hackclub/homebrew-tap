class HcCdn < Formula
  desc "CLI for the Hack Club CDN gateway"
  homepage "https://github.com/hackclub/hc-cdn-tools"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_arm64.tar.gz"
      sha256 "0c1415a0c1dddfac7f919c80dd89068c0ff702887d2a4e1bd069cdea7de08c5a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_amd64.tar.gz"
      sha256 "fd604b233a732addc809f1ffaa3b9753d3706b03a8cfe7718b093a33a7a4ff9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_arm64.tar.gz"
      sha256 "11a1e27263c37a81cb3b0916a0fc65f985fdf7769e5975600161d71ca4a6d010"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_amd64.tar.gz"
      sha256 "c32f4fd5cf47b15f0396a50e9c531e08895fd234df90fb9658cde2d7b2530328"
    end
  end

  def install
    bin.install "hc-cdn"
  end

  test do
    assert_match "hc-cdn", shell_output("#{bin}/hc-cdn --help")
  end
end
