# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class U1f4e7 < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/U1F4E7/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "7c0276d23e431d76f1ecf688d73040ad0de05829f4630360fa52b14664ff00cd"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 0.4.0", shell_output("#{bin}/envelope --version")
  end
end
