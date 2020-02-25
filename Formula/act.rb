# This file was generated by GoReleaser. DO NOT EDIT.
class Act < Formula
  desc "Run GitHub Actions locally"
  homepage "https://github.com/nektos/act"
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nektos/act/releases/download/v0.2.2/act_Darwin_x86_64.tar.gz"
    sha256 "91bcfe71ce9dfc2f42889d08f9f6d01975b65876ee6fdd6010120d18554f1079"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nektos/act/releases/download/v0.2.2/act_Linux_x86_64.tar.gz"
      sha256 "397d9c4a13a906d01a3165800ab4a251c2a1c47482f349c877cfc7a24d458739"
    end
  end

  def install
    bin.install "act"
  end

  test do
    system "#{bin}/act --version"
  end
end
