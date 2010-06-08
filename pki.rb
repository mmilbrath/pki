#!/usr/bin/ruby

require 'openssl'

# Generate a RSA key
def generate_RSA(size=1024, exponent=3)
    key = OpenSSL::PKey::RSA.new(size, exponent)
    raise 'RSA key is not private' unless key.private?
    key
end

[1024,2048].each { |i| puts generate_RSA(i).to_text }

