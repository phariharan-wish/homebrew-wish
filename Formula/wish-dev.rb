class WishDev < Formula
  desc "Docker-compose wrapper for development environments"
  homepage "https://github.com/wish/dev"

  url "https://github.com/wish/dev", :using => :git, :tag => "20200414"

  depends_on "go@1.12" => :build

  def install
    system "make"
    bin.install "build/dev.darwin" => "dev"
  end

  test do
    system "#{bin}/dev", "--version"
  end
end
