class Ou < Formula
  desc "Git worktree management CLI tool"
  homepage "https://github.com/0maru/ou"
  url "https://github.com/0maru/ou/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "f91bc785c63e00d254fd17820d9ea40738ccde06ecc6802f3c9acb3c08cd4f23"
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
