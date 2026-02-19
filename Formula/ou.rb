class Ou < Formula
  desc "Git worktree management CLI tool"
  homepage "https://github.com/0maru/ou"
  url "https://github.com/0maru/ou/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "66a603f30c07491e6db625b3cee8e0d233fe1ef337959c0187db7d2489a742a7"
  license "MIT"
  head "https://github.com/0maru/ou.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ou", shell_output("#{bin}/ou --version")
  end
end
