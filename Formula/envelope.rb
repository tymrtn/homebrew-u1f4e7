# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class Envelope < Formula
  desc "All your email accounts in one inbox, shared with your agents"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/U1F4E7/archive/refs/tags/v1.3.16.tar.gz"
  sha256 "c017ade940f675a29dfb88a3957596dcd57d603fd4f4bac4ebb8661534543efc"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 1.3.16", shell_output("#{bin}/envelope --version")
  end
end
