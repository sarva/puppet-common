module Puppet::Parser::Functions
  newfunction(:mkpasswd, :type => :rvalue) do |args|
    %x{/usr/bin/mkpasswd -5 #{args[0]} #{args[1]}}.chomp[13..-1]
  end
end
