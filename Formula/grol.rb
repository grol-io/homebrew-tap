# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.75.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.75.2/grol_0.75.2_darwin_amd64.zip"
      sha256 "a495e8dcf27869df7b35f8a1dd8cc996cf3ca5999312db4c9e25553d54588ad9"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.75.2/grol_0.75.2_darwin_arm64.zip"
      sha256 "bbeb609a05745e298e0b132a3e5896759002bc9093508c7f855770faf2bbf15d"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.75.2/grol_0.75.2_linux_amd64.tar.gz"
        sha256 "c934c0ea550658d82a396d0cf222ab2a2c177dc8ecb847a9f7ee65a467be8ab5"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.75.2/grol_0.75.2_linux_arm64.tar.gz"
        sha256 "508bd1b289c1b4e11534983fc27f6d45ed501d038678627d17ee9134c635f78e"

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
