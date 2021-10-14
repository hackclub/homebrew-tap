class Haas < Formula
  desc "CLI for Hack as a Service"
  homepage "https://hackclub.app"
  version "0.0.0"

  url "https://doggo.ninja/XpkiGj.gz"
  sha256 "97e76ba67d2b5f0c9d02482fa3f0957f6c04affeee1f5436af62bd876db609d7"

  def install
    bin.install "haas_cli" => "haas"
  end
end
