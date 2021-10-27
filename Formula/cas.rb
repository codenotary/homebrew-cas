class Cas < Formula
    desc "Community Attestation Service"
    homepage "https://cas.codenotary.com/"
    version "v1.0.0"
    if OS.mac?
        url "https://github.com/codenotary/cas/releases/download/#{version}/cas-#{version}-darwin-amd64"
        sha256 "a3999c1540068e9cad765b056d9174b553c7fa4e632172f5f5276f6fee8cf083"
    elsif OS.linux?
        url "https://github.com/codenotary/cas/releases/download/#{version}/cas-#{version}-linux-amd64"
        sha256 "edad536f2c2d3a0742ca9843e7630e878408ee0e8b9fe86a4af5a4d59546fc62"
    end

    def install
        if OS.mac?
            bin.install "./cas-#{version}-darwin-amd64" => "cas"
        elsif OS.linux?
            bin.install "./cas-#{version}-linux-amd64" => "cas"
        end
    end

    test do
        system "#{bin}/cas", "--help"
    end
end
