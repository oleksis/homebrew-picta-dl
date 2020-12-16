class PictaDl < Formula
  include Language::Python::Virtualenv

  desc "Download Picta videos from the command-line"
  homepage "https://github.com/oleksis/picta-dl"
  url "https://github.com/oleksis/picta-dl/releases/download/v2020.12.14/picta_dl-2020.12.14.linux-x86_64.tar.gz"
  license "Unlicense"

  bottle do
    cellar :any_skip_relocation
    sha256 "5f2a2e7aa3c19963af8dc2339dab662a19c8d94f2a83450f18cc78e2ee0cb516" => :big_sur
    sha256 "ab8a02e2db35d53df6361de57520aa463b55563fe990f0c59e477d1e4e539ec2" => :catalina
    sha256 "55dc22a1db012a2e89fe4e82e3edfebda0693fc31cd1dc3f7891283bd74e678a" => :mojave
  end

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    # commit history of homebrew-core repo
    system "#{bin}/picta-dl", "--version"
  end
end
