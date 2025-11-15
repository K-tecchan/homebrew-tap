class PrNote < Formula
  desc "A command-line tool to generate PR notes summarizing unmerged PRs on GitHub between two branches."
  homepage "https://github.com/K-tecchan/pr-note"
  version "v0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.2/pr-note-v0.1.2-darwin-arm64.tar.gz"
      sha256 "0f49e6ffb91780918376bb1ad2c9b8d1fa566e22687e0d4bd9f6ffdea9369515"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.2/pr-note-v0.1.2-darwin-x64.tar.gz"
      sha256 "c55bf489d4a4fdbd4114fe4e7b0197ee945652859159f086523e53ac30cc9927"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.2/pr-note-v0.1.2-linux-arm64.tar.gz"
      sha256 "9a3e312f1e4e439fe5935f3f2d992898e5e411b4425c8b4ededd7e88e8ee1f43"
    end
    if Hardware::CPU.intel?
      url "https://github.com/K-tecchan/pr-note/releases/download/v0.1.2/pr-note-v0.1.2-linux-x64.tar.gz"
      sha256 "fcd5a4844fd67c3503cbb9d262c918bd0c4048b37641172573ff0c1ddaf9ab4a"
    end
  end

  def install
    bin.install "pr-note"
  end

  test do
    system "#{bin}/pr-note", "--version"
  end
end
