# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.40.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.40.1/grol_0.40.1_darwin_amd64.zip"
      sha256 "27a3347b90909ce496b3eba79f39794d49d99f387de9ab9053d4df3217c2f383"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.40.1/grol_0.40.1_darwin_arm64.zip"
      sha256 "d4587327e4f2539fa8f33ba0024ee60a27d9affa9103fc6a8bd589a591d909fc"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.40.1/grol_0.40.1_linux_amd64.tar.gz"
        sha256 "46962a628d9989f386820938076cb448b55fb01e0932e37bff7c738606eed6b3"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.40.1/grol_0.40.1_linux_arm64.tar.gz"
        sha256 "9f3c7de34fe83aa8c3eb4d63dda604531f92a652180ea03051db0185bd443131"

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
