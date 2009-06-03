#!/usr/bin/env ruby

begin
  require 'redcloth'
rescue LoadError
  $LOAD_PATH << File.join(ENV['TM_BUNDLE_SUPPORT'], 'lib')
  require 'redcloth'
end

puts(RedCloth.new($stdin.readlines.join()).to_html(:textile))
