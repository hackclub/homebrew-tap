class HcCdn < Formula
  desc "CLI for the Hack Club CDN gateway"
  homepage "https://github.com/hackclub/hc-cdn-tools"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_arm64.tar.gz"
      sha256 "9dfe6fa8eea0b87579cd80b72dc6768b620a0b4f5dd054d7979ae95ecaac7482"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_amd64.tar.gz"
      sha256 "16ed0ee3522ba4bd49be7f4479d90ea0d66bc70361c274368295ade54a0e5901"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_arm64.tar.gz"
      sha256 "60cc222e4094862b541ce33d544cc2e11a8ce523094799770002ce6e8269907f"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_amd64.tar.gz"
      sha256 "536c0107aa976323ee7963c8547c080fc5962038e5b3e2d9a6137f232aa298ce"
    end
  end

  def install
    bin.install "hc-cdn"
  end

  test do
    assert_match "hc-cdn", shell_output("#{bin}/hc-cdn --help")
  end
end
