class Wrench < Formula
    desc "Schema management tool for Cloud Spanner"
    homepage "https://github.com/cloudspannerecosystem/wrench"
    version "1.10.1"
    license "MIT"
  
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://github.com/cloudspannerecosystem/wrench/releases/download/v#{version}/wrench-#{version}-darwin-arm64.tar.gz"
        sha256 "2e1af2c0bc5e8a7a2415fbf6225245957a30822fd5a6310ad2cafdc2de6e0acb"
      else
        url "https://github.com/cloudspannerecosystem/wrench/releases/download/v#{version}/wrench-#{version}-darwin-amd64.tar.gz"
        sha256 "65aac771e4c2667a89033a4f8e177b48a485b9389e636671b7c5033d90dd3942"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        url "https://github.com/cloudspannerecosystem/wrench/releases/download/v#{version}/wrench-#{version}-linux-arm64.tar.gz"
        sha256 "57d82d9f13df160a44a29ee60954b9c27881d57f94da12688b89efd3182754b3"
      elsif Hardware::CPU.intel?
        url "https://github.com/cloudspannerecosystem/wrench/releases/download/v#{version}/wrench-#{version}-linux-amd64.tar.gz"
        sha256 "0a1bb4e92f38048b21caa02ee130aa4936d9757a3d03c8b51cdf19c306222eb1"
      end
    end
  
    def install
      bin.install "wrench"
    end
  
    test do
      system "#{bin}/wrench", "--version"
    end
end