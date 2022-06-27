class Swiftdependencychecker < Formula
  desc "Dependency checker for swift projects. Analyses dependencies declared in Podfile.lock, Cartfile.resolved and Package.resolved, queries the NDV database for vulnerabilities and outputs warnings for uses of libraries with known vulnerabilities. If tool is run as a build script phase in XCode then warnings are displayed in XCode."
  homepage "https://github.com/kristiinara/SwiftDependencyChecker"
  url "https://github.com/kristiinara/SwiftDependencyChecker/archive/refs/tags/0.2.0.tar.gz"
  sha256 "c05b2e21569064f44b1c5de4c28aae582d9bd332db0b4bc6e798c2b04e64d0b4"
  license "MIT"

  def install
      system "swift", "build", "--disable-sandbox", "--configuration", "release"
      bin.install ".build/release/SwiftDependencyChecker"
  end

  test do
    system "true"
  end
end
