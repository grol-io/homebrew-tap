# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.75.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.75.1/grol_0.75.1_darwin_amd64.zip"
      sha256 "68cdfacdd5597d89f18f9705e5f96d4b404cbb2d0a9451ddb086f0040fc5ccae"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.75.1/grol_0.75.1_darwin_arm64.zip"
      sha256 "b7051299d67797f214f9cbb806dfc24e9788a8dab6f795b8cd97784d04b526d4"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.75.1/grol_0.75.1_linux_amd64.tar.gz"
        sha256 "3c85740570dba8d496e1c9f57dae9f3059ae8f57d9c8afb57614d1e0ae3e0eb1"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.75.1/grol_0.75.1_linux_arm64.tar.gz"
        sha256 "d3c1414518c5ffe9b3a30bd19ae3a9412edacdebb030d085cd9ac037fb76db60"

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
