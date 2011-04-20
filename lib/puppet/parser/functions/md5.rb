module Puppet::Parser::Functions
  newfunction(:md5, :type => :rvalue) do |args|
    require 'digest/md5'
    Digest::MD5.hexdigest(Digest::MD5.hexdigest(args[0]) + args[1])
  end
end
