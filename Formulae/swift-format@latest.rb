# frozen_string_literal: true

class SwiftFormat < Formula
  desc "`Code formatter, based on SourceKit-LSP."
  homepage "https://github.com/apple/swift-format"
  url "https://github.com/apple/swift-format.git", branch: "main"
  version "latest"

  depends_on xcode: ["12.5", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--build-path", "'.build'"
    bin.install ".build/release/swift-format"
  end

  test do
    system "#{bin}/swift-format", "--version"
  end
end
