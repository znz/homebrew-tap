# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Act < Formula
  desc "Run GitHub Actions locally"
  homepage "https://github.com/nektos/act"
  version "0.2.24"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nektos/act/releases/download/v0.2.24/act_Darwin_x86_64.tar.gz"
      sha256 "e086253414ad59dd0d3609d66ed57322e9dae9dd3b315e8df65039f03dc167f9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nektos/act/releases/download/v0.2.24/act_Darwin_arm64.tar.gz"
      sha256 "4b8731edb1d336ded575f18a6c883bd81a9ce53858e82d6b2c4de261c857ea37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nektos/act/releases/download/v0.2.24/act_Linux_x86_64.tar.gz"
      sha256 "52b7a9152353e107261a1d1365205baa821cffb4b1aced91ba204abc55d54ee0"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nektos/act/releases/download/v0.2.24/act_Linux_armv6.tar.gz"
      sha256 "84dbe4ee2f1838f9f0f4613609115f33a0969d6ed531148ecbd91d46bb0e0d82"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nektos/act/releases/download/v0.2.24/act_Linux_arm64.tar.gz"
      sha256 "9c4f0b49878275148b9a6e7fb29295b3b6472c87673a7328ce02fbc002c94bf6"
    end
  end

  def install
    bin.install "act"
  end

  test do
    system "#{bin}/act --version"
  end
end
