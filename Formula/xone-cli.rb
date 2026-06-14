class XoneCli < Formula
  include Language::Python::Virtualenv

  desc "Unified CLI entry point for X-One Agent Evidence Loop workflows"
  homepage "https://github.com/X-One-AI/xone-cli"
  url "https://files.pythonhosted.org/packages/71/6a/b0b77baddc6070c457ea367bc4101f030dee4358d8d8e0cb23dbfd6a89f4/xone_cli-0.1.0.tar.gz"
  sha256 "abf66647305855321c4cf61f75427fbc766c49688ee8927a4ae719c6c7903866"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "xone 0.1.0", shell_output("#{bin}/xone --version")
    assert_match "xone.doctor.v1", shell_output("#{bin}/xone doctor --json")
  end
end
