class XoneCli < Formula
  include Language::Python::Virtualenv

  desc "Unified CLI entry point for X-One Agent Evidence Loop workflows"
  homepage "https://github.com/X-One-AI/xone-cli"
  url "https://files.pythonhosted.org/packages/0d/f1/19d45b37cc47b7ea8a13ad258e374dd960e8efc51b7c768b8bf00d461806/xone_cli-0.1.2.tar.gz"
  sha256 "b78c66d8bf202f552d8b446adf06645ee51611ffa91c2f5e80d18eb3c0376d40"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "xone 0.1.2", shell_output("#{bin}/xone --version")
    assert_match "X-One install plan", shell_output("#{bin}/xone doctor --install-plan")
    assert_match "xone.doctor.v1", shell_output("#{bin}/xone doctor --json")
  end
end
