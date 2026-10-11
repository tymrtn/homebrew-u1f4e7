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
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.21/envelope-1.3.21-aarch64-apple-darwin.tar.gz"
      sha256 "701f942d468567ef71f969e44c8a001b62e9de08123de6434db0ca3a7c8b93cb"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.21/envelope-1.3.21-x86_64-apple-darwin.tar.gz"
      sha256 "2336e48b22f4f36238fbcdf9c01510db29ce492eadc48ba453547798f86a405c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.21/envelope-1.3.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bace8ec86d7e1f662640f60c4a3d474b60730a7d6d8adcc024beb99747787415"
    end
    on_intel do
      url "https://github.com/tymrtn/U1F4E7/releases/download/v1.3.21/envelope-1.3.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26d13ef30cf6f06d184dc7bb9c44b4b44494b11cd2694098a145f4ccc501f70e"
    end
  end

  def install
    bin.install "envelope"
  end

  test do
    assert_match "envelope #{version}", shell_output("#{bin}/envelope --version")
  end
end
