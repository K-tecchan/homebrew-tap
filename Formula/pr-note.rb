class PrNote < Formula
  desc "A command-line tool to generate PR notes summarizing unmerged PRs on GitHub between two branches."
  homepage "https://github.com/K-tecchan/pr-note"
  version "v0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.3/pr-note-v0.1.3-darwin-arm64.tar.gz"
      sha256 "7393dadfdeda4450b00c334817b55f2ae0834f47d2eeff12b2c213fbe4a68bf4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.3/pr-note-v0.1.3-darwin-x64.tar.gz"
      sha256 "acb427e51768701c31e6ddc9a2625af4cf8da36564937e3262335b2cb604b2de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.3/pr-note-v0.1.3-linux-arm64.tar.gz"
      sha256 "dde054821eef2439b53398a94a7b9a21d0573e1015f64cbd08cf4757696079fd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.3/pr-note-v0.1.3-linux-x64.tar.gz"
      sha256 "88a2ba5e192758ed13cc57955cf2f50cabde56706fd81e1529f314c00693b507"
    end
  end

  def install
    bin.install "pr-note"
  end

  test do
    system "#{bin}/pr-note", "--version"
  end
end
