# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class U1f4e7 < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/U1F4E7/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6cd6857292ea3ef4b9f53138ee3e39c8fe3a457ef183cee41b6bb85c990c25c1"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 1.0.0", shell_output("#{bin}/envelope --version")
  end
end
