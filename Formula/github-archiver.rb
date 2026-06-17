class GithubArchiver < Formula
  desc "Mirror GitHub repositories to another account or organization"
  homepage "https://github.com/aymnms/github-archiver"
  url "https://github.com/aymnms/github-archiver/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "55f6cfd32240716a8b138f5e2f175ffb22ffbd5db9861631599b244cf95e3737"
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
