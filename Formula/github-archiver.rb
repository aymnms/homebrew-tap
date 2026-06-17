class GithubArchiver < Formula
  desc "Mirror GitHub repositories to another account or organization"
  homepage "https://github.com/aymnms/github-archiver"
  url "https://github.com/aymnms/github-archiver/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "77e432d96dda5a378e483edb0dd3442ca5130728b410f190a8b43bfc879589d8"
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
