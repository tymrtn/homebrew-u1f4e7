# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

# Installs the release binaries rather than building from source: only the
# release build has Envelope's Google sign-in client compiled in.
class Envelope < Formula
  desc "All your email accounts in one inbox, shared with your agents"
  homepage "https://u1f4e7.com"
  license "FSL-1.1-ALv2"

  on_macos do
    on_arm do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.24/envelope-1.3.24-aarch64-apple-darwin.tar.gz"
      sha256 "987816d063b8bb4b658821d04084f7ca5f67b3eecad82a8084f169e045a79def"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.24/envelope-1.3.24-x86_64-apple-darwin.tar.gz"
      sha256 "f266c7b5d41c9b67ee15252b552acf554fef2d32ea6f51b11d0fb0e0a02170fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.24/envelope-1.3.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d59c9b5fd9949f09c55b7eef64d95f123d67c9fecc61945cd5cbd89126c67079"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.24/envelope-1.3.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd04a447741c93be67cca9e800470a129d54b35db549a44f4ac86c78e9627f3e"
    end
  end

  def install
    bin.install "envelope"
  end

  test do
    assert_match "envelope #{version}", shell_output("#{bin}/envelope --version")
  end
end
