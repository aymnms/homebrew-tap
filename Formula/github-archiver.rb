class GithubArchiver < Formula
  desc "Mirror GitHub repositories to another account or organization"
  homepage "https://github.com/aymnms/github-archiver"
  url "https://github.com/aymnms/github-archiver/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "f847fad6546c72c15b1e4879f431289cd25cfd9da9fd89cf03d6d88174fca6da"
  license "MIT"

  def install
    bin.install "github-archiver.sh" => "github-archiver"
    bin.install "push.sh"
  end

  test do
    output = shell_output("#{bin}/github-archiver 2>&1", 1)
    assert_match "Usage", output
  end
end
