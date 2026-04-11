class WeztermAgentDashboard < Formula
  desc "WezTerm dashboard that monitors AI coding agents across all panes and workspaces"
  homepage "https://github.com/0maru/wezterm-agent-dashboard"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0maru/wezterm-agent-dashboard/releases/download/v#{version}/wezterm-agent-dashboard-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "acde572f4dd4006826499790a8ec7a47a1fa013f8ef0ef5e06d2d4ed1059eab5"
    end
    on_intel do
      url "https://github.com/0maru/wezterm-agent-dashboard/releases/download/v#{version}/wezterm-agent-dashboard-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0503be5b68378933327e008ec6bc2f615e25b8867970bc66a1c6a8284742375e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0maru/wezterm-agent-dashboard/releases/download/v#{version}/wezterm-agent-dashboard-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff8b0e41e1ae46555fd265338572fb0923ae7e4a721753beca5b1ed365a5a183"
    end
  end

  def install
    bin.install "wezterm-agent-dashboard"
  end

  def caveats
    <<~EOS
      wezterm-agent-dashboard は WezTerm Lua プラグインと連携して動作します。

      ~/.wezterm.lua に以下を追加してください:

        local dashboard = wezterm.plugin.require("https://github.com/0maru/wezterm-agent-dashboard")
        dashboard.apply_to_config(config)

      デフォルトのトグルキーは LEADER + e です。
      カスタマイズ例: dashboard.setup({ toggle_key = { key = "...", mods = "..." } })

      詳細は https://github.com/0maru/wezterm-agent-dashboard を参照してください。
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wezterm-agent-dashboard version")
  end
end
