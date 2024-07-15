# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.19.1-pre10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.19.1-pre10/grol_0.19.1-pre10_darwin_amd64.zip"
      sha256 "a534543890085424c64f477afc0c7dddc5d4fc001b9d3b3a7c63a6a25de2fe84"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.19.1-pre10/grol_0.19.1-pre10_darwin_arm64.zip"
      sha256 "22f217dfd65a74222e2ef74f8b31fe4a9baa94080761f09682f89669ede99f65"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.19.1-pre10/grol_0.19.1-pre10_linux_amd64.tar.gz"
        sha256 "efa83bb99794fd180883631279296891f89de62c0b4768c4fa02e0d65d634c92"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.19.1-pre10/grol_0.19.1-pre10_linux_arm64.tar.gz"
        sha256 "7a4ba53158c67400b911481de1965bf7df7fad74ed44c4d05f4bf6abd6402570"

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
