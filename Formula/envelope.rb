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
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.26/envelope-1.3.26-aarch64-apple-darwin.tar.gz"
      sha256 "0852f55e96e14c4812d422e27eef40f8584ae0f7e43f126e73740a7d536be37b"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.26/envelope-1.3.26-x86_64-apple-darwin.tar.gz"
      sha256 "a2f785fca5d9ea9a88c729c8c05f989b9a79ca0adf033de646e65feff7acea75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.26/envelope-1.3.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86afe2bbb70aaa990061efc25b9b628fb270af385252601657031ba420360785"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.26/envelope-1.3.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "394bc03de0fe7d168e52eeabee107ef772b2f765933900865f71989e6198401a"
    end
  end

  def install
    bin.install "envelope"
  end

  test do
    assert_match "envelope #{version}", shell_output("#{bin}/envelope --version")
  end
end
