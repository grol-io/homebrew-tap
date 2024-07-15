# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grol < Formula
  desc "Go Repl Open Language: simple, small but powerful interpreted language in Go"
  homepage "https://grol.io/"
  version "0.19.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/grol-io/grol/releases/download/v0.19.1/grol_0.19.1_darwin_amd64.zip"
      sha256 "afa017c75fd8cca3607849e6c579962264fe208459f367ac413cb0eb63b31176"

      def install
        bin.install "grol"
      end
    end
    on_arm do
      url "https://github.com/grol-io/grol/releases/download/v0.19.1/grol_0.19.1_darwin_arm64.zip"
      sha256 "44fd005f69cae990d353f30bc700ae1f0f2c73407d6ec2aed29a54210beefa70"

      def install
        bin.install "grol"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.19.1/grol_0.19.1_linux_amd64.tar.gz"
        sha256 "dc7091605d1dbd7ac10af9583f742035adafeeaa90828e2fc56aa53facfaa671"

        def install
          bin.install "grol"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/grol-io/grol/releases/download/v0.19.1/grol_0.19.1_linux_arm64.tar.gz"
        sha256 "c6018623b5723f8d7ed8ce026c53b25aa10bf121ed6f36ce81c4644d1f4b4368"

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