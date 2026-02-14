class Ou < Formula
  desc "Git worktree management CLI tool"
  homepage "https://github.com/0maru/ou"
  url "https://github.com/0maru/ou/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ebe06710330238a0516683f6070d7b9f11d8e23939d3c128caf1ddb665ca0f1e"
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
