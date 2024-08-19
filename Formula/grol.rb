# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.51.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.51.2/grol_0.51.2_darwin_amd64.zip"
      sha256 "0b3b25fceb944de17ac14a14b88ad44826d23f7c9a3547a8d1db115d54a593c9"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.51.2/grol_0.51.2_darwin_arm64.zip"
      sha256 "d384e1279fd2e0bc243ac6a49d83d9adafc0f4c00fbfa2421d875d9e2d2e08a4"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.51.2/grol_0.51.2_linux_amd64.tar.gz"
        sha256 "b73830746822bb2edc9e740efe98c460c959969d62cc30a5a4bbb959ae6685fc"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.51.2/grol_0.51.2_linux_arm64.tar.gz"
        sha256 "75bf4457fae0593d8e141ad983a82b5a7413e6e29e5ba2c29d27cc01d3bb439e"

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
