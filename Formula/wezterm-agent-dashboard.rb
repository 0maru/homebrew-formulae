class WeztermAgentDashboard < Formula
  desc "A WezTerm dashboard that monitors AI coding agents across all panes and workspaces"
  homepage "https://github.com/0maru/wezterm-agent-dashboard"
  url "https://github.com/0maru/wezterm-agent-dashboard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"
  head "https://github.com/0maru/wezterm-agent-dashboard.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wezterm-agent-dashboard version")
  end
end
