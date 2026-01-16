class Send2trash < Formula
  desc "Move files and folders to the macOS Trash"
  homepage "https://github.com/muonium-ai/send2trash"
  url "https://github.com/muonium-ai/send2trash/archive/5200ba1c5d7d8255d36100cb8878e4f8b444b4d7.tar.gz"
  version "5200ba1c"
  sha256 "e3ef1c58d0e46b15ae5ed7459cdf8ad5b2e9b989d3106466d7179e70ebaed4f0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on xcode: [:build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/send2trash", "-h"
  end
end