class GithubArchiver < Formula
  desc "Mirror GitHub repositories to another account or organization"
  homepage "https://github.com/aymnms/github-archiver"
  url "https://github.com/aymnms/github-archiver/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "48c4c654794d7ab416274a28f99bcd7bbbbe8fed0d54652ee94d6708ff1ac13c"
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
