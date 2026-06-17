class GithubArchiver < Formula
  desc "Mirror GitHub repositories to another account or organization"
  homepage "https://github.com/aymnms/github-archiver"
  url "https://github.com/aymnms/github-archiver/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0ae9480fa2b6312bc9c1a8a67c014be8bef3f51907b6dba52b078ffa77b8d3d9"
  license "MIT"

  def install
    bin.install "run.sh" => "github-archiver"
    bin.install "push.sh"
  end

  test do
    output = shell_output("#{bin}/github-archiver 2>&1", 1)
    assert_match "Usage", output
  end
end
