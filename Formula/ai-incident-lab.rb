class AiIncidentLab < Formula
  include Language::Python::Virtualenv

  desc "Safe local incident simulations for AI agents, MCP tools, and generated code"
  homepage "https://github.com/X-One-AI/ai-incident-lab"
  url "https://github.com/X-One-AI/ai-incident-lab/releases/download/v0.2.1/xone_ai_incident_lab-0.2.1.tar.gz"
  sha256 "6b5cc75e94d91e11c5a85583aef47cb7bea2de7f710faf44de98f09cb76b6adb"
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
    assert_match "ai-incident-lab 0.2.1", shell_output("#{bin}/ai-incident-lab --version")
    system bin/"ai-incident-lab", "init", "--output", testpath/"scenarios"
    system bin/"ai-incident-lab", "validate", "--scenarios", testpath/"scenarios"
  end
end
