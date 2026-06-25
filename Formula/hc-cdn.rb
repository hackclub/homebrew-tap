class HcCdn < Formula
  desc "CLI for the Hack Club CDN gateway"
  homepage "https://github.com/hackclub/hc-cdn-tools"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/hc-cdn-tools/releases/download/v#{version}/hc-cdn_#{version}_darwin_arm64.tar.gz"
      sha256 "414a436a481f43dec701741d21a5fe50da7e2f07e9c4bb086ba6054124d73fdf"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/hc-cdn-tools/releases/download/v#{version}/hc-cdn_#{version}_darwin_amd64.tar.gz"
      sha256 "85232049ec859673ba298bb6e1ab1b95c48c85c6adeb0218a853df9149795a87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hackclub/hc-cdn-tools/releases/download/v#{version}/hc-cdn_#{version}_linux_arm64.tar.gz"
      sha256 "ba49b9e1196754bd9947cb0262f3602a7b1066e39b7913a864c3fd47b4d39e80"
    end

    if Hardware::CPU.intel?
      url "https://github.com/hackclub/hc-cdn-tools/releases/download/v#{version}/hc-cdn_#{version}_linux_amd64.tar.gz"
      sha256 "66278ae9984303f669f1473a717b26246fee73b5df1090f311602baf23330e1a"
    end
  end

  def install
    bin.install "hc-cdn"
  end

  test do
    assert_match "hc-cdn", shell_output("#{bin}/hc-cdn --help")
  end
end
