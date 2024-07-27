# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.25.0-pre3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.25.0-pre3/grol_0.25.0-pre3_darwin_amd64.zip"
      sha256 "25e482b266188482ace92ad5608f0fbe48af8c347d8576b373c559119244d459"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.25.0-pre3/grol_0.25.0-pre3_darwin_arm64.zip"
      sha256 "ed5562e8c7122acb12c7870f5ec090ed688ce4022245fc2d375598482457fd7d"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.25.0-pre3/grol_0.25.0-pre3_linux_amd64.tar.gz"
        sha256 "2445c59e7c688217736afc739db2b57b0ded6a4970517bb43be4901b3d792be3"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.25.0-pre3/grol_0.25.0-pre3_linux_arm64.tar.gz"
        sha256 "deccc0d1f3330ec8270d60ebb8e643ac95dcfa00a1a837c65553e6db5cfcbb82"

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
