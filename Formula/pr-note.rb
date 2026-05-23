class PrNote < Formula
  desc "A command-line tool to generate PR notes summarizing unmerged PRs on GitHub between two branches."
  homepage "https://github.com/K-tecchan/pr-note"
  version "v0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.2.0/pr-note-v0.2.0-darwin-arm64.tar.gz"
      sha256 "7eff08719979c95ef7c7dc710644d00c5fea5c9303090326ad319ff678f8acb8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.2.0/pr-note-v0.2.0-darwin-x64.tar.gz"
      sha256 "9553b02b42a8ba4d80c28c6b04f88f452aca8e351abe1bfe8e862f4aa1e00f4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.2.0/pr-note-v0.2.0-linux-arm64.tar.gz"
      sha256 "6e2a28850fd7079c86819486a4dbd354d0668a97367e91a950af5306d2e37307"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.2.0/pr-note-v0.2.0-linux-x64.tar.gz"
      sha256 "2eb2f520c2ffeb00038f9baebb540cccbace535ca0938d42c1a81d88f994ba8f"
    end
  end

  def install
    bin.install "pr-note"
  end

  test do
    system "#{bin}/pr-note", "--version"
  end
end
