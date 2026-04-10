class WeztermAgentDashboard < Formula
  desc "Real-time AI coding agent monitoring dashboard for WezTerm"
  homepage "https://github.com/0maru/wezterm-agent-dashboard"
  license "MIT"
  head "https://github.com/0maru/wezterm-agent-dashboard.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "wezterm-agent-dashboard", shell_output("#{bin}/wezterm-agent-dashboard --version")
  end
end
