require 'language/node'

class Wscat < Formula
  desc "WebSocket cat"
  homepage "https://www.npmjs.com/package/wscat"
  url "https://registry.npmjs.org/wscat/-/wscat-2.2.0.tgz"
  sha256 "b80176752ffcb594be08f56d6cdc21e3ec642cf146398d8463b3714f5ca460da"
  head "https://github.com/websockets/wscat.git"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
