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
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.25/envelope-1.3.25-aarch64-apple-darwin.tar.gz"
      sha256 "90e6b2e7b9fd1405c44683a7183aa83805288969c273fb726f35dc7474f3c7a2"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.25/envelope-1.3.25-x86_64-apple-darwin.tar.gz"
      sha256 "f5e64edaa404bc01eacea0ecc4582b21f4b1a460b581aed8e6c699262af22b81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.25/envelope-1.3.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d019b4090a689959d3e3f79ebce87a3dd860998d7b5390bcc29bff4df37f79e3"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.25/envelope-1.3.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f881f10f44fd647ac25f74ffa35104002e6b51a3022696be525114f2033ade02"
    end
  end

  def install
    bin.install "envelope"
  end

  test do
    assert_match "envelope #{version}", shell_output("#{bin}/envelope --version")
  end
end
