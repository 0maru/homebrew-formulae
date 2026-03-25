class Ou < Formula
  desc "Git worktree management CLI tool"
  homepage "https://github.com/0maru/ou"
  url "https://github.com/0maru/ou/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "ba61767c6e6cc7e2ff136ca11fa73b277dc5d7291e5bfaf86abf501a2b0b4ed3"
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
