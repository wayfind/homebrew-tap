class IntentEngine < Formula
  desc "AI long-term task memory system - cross-session persistence, hierarchical tasks, decision records"
  homepage "https://github.com/wayfind/intent-engine"
  version "0.10.11"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-aarch64.tar.gz"
      sha256 "397ca064483faccff3b6a91402046a716910ea96045f207eb2e50c512200ce3d"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-macos-x86_64.tar.gz"
      sha256 "5ff65b98fea883c0ca1e941cb9537837bcf826b848ce1215e24e036c437903bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-aarch64.tar.gz"
      sha256 "aafaa8fbe821dbc28a93338126a58b74ca59215abb5462016fee11dccccd9d55"
    else
      url "https://github.com/wayfind/intent-engine/releases/download/v#{version}/intent-engine-linux-x86_64.tar.gz"
      sha256 "d1030e6955073af8df6990e354ecb6624121c4d09adcdd4da109e1e87715807b"
    end
  end

  def install
    bin.install "ie"
  end

  test do
    system "#{bin}/ie", "--version"
  end
end
