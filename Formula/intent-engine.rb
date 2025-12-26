class IntentEngine < Formula
  desc "AI long-term task memory system - cross-session persistence, hierarchical tasks, decision records"
  homepage "https://github.com/wayfind/intent-engine"
  version "0.10.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-aarch64.tar.gz"
      sha256 "0f53e18ccb6250dc312b5671d9b7fb9a02a476eea5f494c467e9e174289508c3"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-x86_64.tar.gz"
      sha256 "e7fcdb09e5f027cc8d2ccb8d2835d4df84f324ed17968ba7fe9530bde45e19a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-aarch64.tar.gz"
      sha256 "02c0e2f970d4cbe4ab863e60d5e2e6a2b80a357a77ab7869c27631abe26749d5"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-x86_64.tar.gz"
      sha256 "73de6fde0f821056e9988359b20b2344a0f49e14dfa07d25a874ff05b3b3abcc"
    end
  end

  def install
    bin.install "ie"
  end

  test do
    system "#{bin}/ie", "--version"
  end
end
