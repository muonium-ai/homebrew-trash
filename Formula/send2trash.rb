class Send2trash < Formula
  desc "Move files and folders to the macOS Trash"
  homepage "https://github.com/muonium-ai/send2trash"
  url "https://github.com/muonium-ai/send2trash/archive/refs/heads/master.tar.gz"
  version "master"
  sha256 "229a3ffa4287c7f990f4b7f953aa3e91adefca4a2bbb2d206569572816ed606e"
  license "MIT"

  depends_on xcode: [:build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/send2trash", "-h"
  end
end