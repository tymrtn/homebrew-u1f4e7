# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class Envelope < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/U1F4E7/archive/refs/tags/v1.3.4.tar.gz"
  sha256 "1d5c31e0dbaec55762503321388250e296e2c853b28091cf403687fe3fe3663c"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 1.3.4", shell_output("#{bin}/envelope --version")
  end
end
