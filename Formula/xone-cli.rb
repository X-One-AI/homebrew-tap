class XoneCli < Formula
  include Language::Python::Virtualenv

  desc "Unified CLI entry point for X-One Agent Evidence Loop workflows"
  homepage "https://github.com/X-One-AI/xone-cli"
  url "https://files.pythonhosted.org/packages/ec/ca/df5a51a92ffc5ddaf2c2f2fec3f14161dd7f8997dabeb634ee2f37a1ce47/xone_cli-0.1.1.tar.gz"
  sha256 "07d07b2016756125d68f068b2f2cc517b48198207c34ee43b409133849b25554"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "xone 0.1.1", shell_output("#{bin}/xone --version")
    assert_match "X-One install plan", shell_output("#{bin}/xone doctor --install-plan")
    assert_match "xone.doctor.v1", shell_output("#{bin}/xone doctor --json")
  end
end
