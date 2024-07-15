# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.20.0/grol_0.20.0_darwin_amd64.zip"
      sha256 "fc2d3e3bc59b1ee7fb7bedd4a3e04c29cfe229f2163e252d313551b09943afc2"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.20.0/grol_0.20.0_darwin_arm64.zip"
      sha256 "5e1a447db71e6342369732204997a910f186250d4ab03bb4b79d46286cb2a045"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.20.0/grol_0.20.0_linux_amd64.tar.gz"
        sha256 "a23d8d389ccc536f6d5bb7a54b7af950cd8150d3b56c8b97ee9bdb05c2da6e8a"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.20.0/grol_0.20.0_linux_arm64.tar.gz"
        sha256 "f06ac591df88c6f8d791ddbc6968bedfdc28ab6bd145fda8b37498dbe70cc633"

        def install
          bin.install "grol"
        end
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grol -version")
  end
end
