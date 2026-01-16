class Trash < Formula
  desc "Move files and folders to the macOS Trash"
  homepage "https://github.com/muonium-ai/trash-swift"
  url "https://github.com/muonium-ai/trash-swift/archive/refs/heads/master.tar.gz"
  sha256 "363e60f92501a7932a94f7c66403140e5b5c5ec304cbc9b5d6e30fb47e4a2054"
  license "MIT"

  depends_on xcode: [:build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/trash", "-h"
  end
end