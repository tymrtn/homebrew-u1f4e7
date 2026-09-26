# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class Envelope < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/U1F4E7/archive/refs/tags/v1.3.5.tar.gz"
  sha256 "c194dee551ab4e5294c39961fc744f78dc3b0e01637ee8a331964cd9dc873776"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 1.3.5", shell_output("#{bin}/envelope --version")
  end
end
