class HcCdn < Formula
  desc "CLI for the Hack Club CDN gateway"
  homepage "https://github.com/hackclub/hc-cdn-tools"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_arm64.tar.gz"
      sha256 "79701c43cb53e16bf0e4b0b3d29215f624030e0a182c4452f42bab7681b832a3"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_darwin_amd64.tar.gz"
      sha256 "0a51668fcd409b1985bc058e99b749e4574dd3feb70c83a574b97cebf130af2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_arm64.tar.gz"
      sha256 "8aae80439376e4fa87364b16bb780af8f3a4984acebfde60bb0e23b6018e8e94"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/homebrew-tap/releases/download/hc-cdn-v#{version}/hc-cdn_#{version}_linux_amd64.tar.gz"
      sha256 "2cfe7185842aa1e723d38103088ad8f87081fa49c220246117b28b30c4c31453"
    end
  end

  def install
    bin.install "hc-cdn"
  end

  test do
    assert_match "hc-cdn", shell_output("#{bin}/hc-cdn --help")
  end
end
