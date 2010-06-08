#!/usr/bin/ruby

require 'openssl'

# Generate a RSA key pair
def generate_RSA(size=1024, exponent=3)
    key = OpenSSL::PKey::RSA.new(size, exponent)
    raise 'RSA key is not private' unless key.private?
    key
end


def generate_DSA(size=1024)
    key = OpenSSL::PKey::DSA.new(size)
    raise 'DSA key is not private' unless key.private?
    key
end

[1024,2048].each { |i| puts generate_RSA(i).to_text }
[1024,2048].each { |i| puts generate_DSA(i).to_text }

