class Swiftdependencychecker < Formula
  desc "Dependency checker for swift projects. Analyses dependencies declared in Podfile.lock, Cartfile.resolved and Package.resolved, queries the NDV database for vulnerabilities and outputs warnings for uses of libraries with known vulnerabilities. If tool is run as a build script phase in XCode then warnings are displayed in XCode."
  homepage "https://github.com/kristiinara/SwiftDependencyChecker"
  url "https://github.com/kristiinara/SwiftDependencyChecker/archive/refs/tags/0.1.1.tar.gz"
  sha256 "6377786cbbf22fd7b9c0642045ee357876b1865ae72fcebb0975377f402a5e8a"
  license "MIT"

  def install
      system "swift", "build", "--disable-sandbox", "--configuration", "release"
      bin.install ".build/release/SwiftDependencyChecker"
  end

  test do
    system "true"
  end
end

