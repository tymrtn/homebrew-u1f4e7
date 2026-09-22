# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class U1f4e7 < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/U1F4E7/archive/refs/tags/v1.2.5.tar.gz"
  sha256 "64da728f57c44aec9e7cb5de60187f324412fe2d15664991bf130ac4fd93b227"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 1.2.5", shell_output("#{bin}/envelope --version")
  end
end
