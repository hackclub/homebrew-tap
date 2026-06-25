class HcCdn < Formula
  desc "CLI for the Hack Club CDN gateway"
  homepage "https://github.com/hackclub/hc-cdn-tools"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_arm64.tar.gz"
      sha256 "f0a34a6c6b166396e5f60d655c029e70b0350ba3f00bb4b3d11963e023c0a80f"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_amd64.tar.gz"
      sha256 "067a7fe9b2b2ca922d575e55413d842b74f1c71ae023ab4a59871b0176ad59e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_arm64.tar.gz"
      sha256 "c28a26c2cceb3a0ac9a0e7b7c31580a8cbbc1ef7b6b4f512cbf004f50da8228f"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_amd64.tar.gz"
      sha256 "bb899c784cb34d1cb3567618dab9911cce48d3ece43a9f07c55ea8580ee822d5"
    end
  end

  def install
    bin.install "hc-cdn"
  end

  test do
    assert_match "hc-cdn", shell_output("#{bin}/hc-cdn --help")
  end
end
