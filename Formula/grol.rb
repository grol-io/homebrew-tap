# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.66.0-pre3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.66.0-pre3/grol_0.66.0-pre3_darwin_amd64.zip"
      sha256 "219266e610c0430926872b4eb6d0a32edf8a3c9a93e14f0654968747716a1465"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.66.0-pre3/grol_0.66.0-pre3_darwin_arm64.zip"
      sha256 "45794cf36e4f06b13b68eb416e212c00b893dabd70e9331c709ce555020c1608"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.66.0-pre3/grol_0.66.0-pre3_linux_amd64.tar.gz"
        sha256 "7b420b9ee8169b41e981c8607552cd7af3a071047af7d4a6f7be837aa814a6f3"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.66.0-pre3/grol_0.66.0-pre3_linux_arm64.tar.gz"
        sha256 "4248af494f2627da862f3fe7c2c5730b7c64e8ad62ed012c41900e26360e671b"

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
