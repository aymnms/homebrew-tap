class GithubArchiver < Formula
  desc "Mirror GitHub repositories to another account or organization"
  homepage "https://github.com/aymnms/github-archiver"
  url "https://github.com/aymnms/github-archiver/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "69fa22172394dcd0679f9e97807db8ec96f9a7bee0324950b498d0f2f9efd246"
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
