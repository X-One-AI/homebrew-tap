class XoneCli < Formula
  include Language::Python::Virtualenv

  desc "Unified CLI entry point for X-One Agent Evidence Loop workflows"
  homepage "https://github.com/X-One-AI/xone-cli"
  url "https://files.pythonhosted.org/packages/01/78/5b4198e188d344283060511503357207c970503bc7a3eef450d2de4f3ba5/xone_cli-0.1.4.tar.gz"
  sha256 "006505fb6bb4bab0eeeab7cc6ded20c31126c926544066e69fcac6130aaa1391"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "xone 0.1.4", shell_output("#{bin}/xone --version")
    assert_match "X-One install plan", shell_output("#{bin}/xone doctor --install-plan")
    assert_match "xone.doctor.v1", shell_output("#{bin}/xone doctor --json")
  end
end
