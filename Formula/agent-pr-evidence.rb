class AgentPrEvidence < Formula
  include Language::Python::Virtualenv

  desc "Generate reviewable safety evidence for AI-agent-generated pull requests"
  homepage "https://github.com/X-One-AI/agent-pr-evidence"
  url "https://github.com/X-One-AI/agent-pr-evidence/releases/download/v0.4.1/xone_agent_pr_evidence-0.4.1.tar.gz"
  sha256 "a87c6b41c342be575ce824dcf66aee586026ca0dd1f2254fbb80f86be8f18ed0"
  license "MIT"

  depends_on "python@3.13"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "agent-pr-evidence 0.4.1", shell_output("#{bin}/agent-pr-evidence --version")
  end
end
