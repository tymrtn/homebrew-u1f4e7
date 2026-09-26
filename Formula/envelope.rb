# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class Envelope < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/U1F4E7/archive/refs/tags/v1.3.6.tar.gz"
  sha256 "21fa6755e58829901ad94e9c27c02b90cc45be371861e300fe21e7305b689e5c"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 1.3.6", shell_output("#{bin}/envelope --version")
  end
end
