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
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.22/envelope-1.3.22-aarch64-apple-darwin.tar.gz"
      sha256 "fc24df044c135b56c428b75278c8c57497785c95f1b681e2cabbf54a29b97728"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.22/envelope-1.3.22-x86_64-apple-darwin.tar.gz"
      sha256 "097dce13bd71a429dc56402bc14548f6cced0e344ce8087c1a474fe99370946d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.22/envelope-1.3.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1845b1ef09dbf83dbcca1f3f7966f5023c50178464e40080d80287c0b20f3b54"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.22/envelope-1.3.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92640cb73ec44daaf7e6be0e973d8552cf3db0b49c927647489eb74646058882"
    end
  end

  def install
    bin.install "envelope"
  end

  test do
    assert_match "envelope #{version}", shell_output("#{bin}/envelope --version")
  end
end
