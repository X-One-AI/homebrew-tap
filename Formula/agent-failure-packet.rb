class AgentFailurePacket < Formula
  include Language::Python::Virtualenv

  desc "Create redacted, shareable debug packets from failed AI agent runs"
  homepage "https://github.com/X-One-AI/agent-failure-packet"
  url "https://github.com/X-One-AI/agent-failure-packet/releases/download/v0.4.0/xone_agent_failure_packet-0.4.0.tar.gz"
  sha256 "533892ee6760e53d6f6f7efd5146dc8005f35dce1b0dc93d2ec32b8506e9e0bf"
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
    assert_match "agent-failure-packet 0.4.0", shell_output("#{bin}/agent-failure-packet --version")
    system bin/"agent-failure-packet", "init", "--profile", "issue", "--output", testpath/"agent-failure-packet.yml"
    assert_path_exists testpath/"agent-failure-packet.yml"
  end
end
