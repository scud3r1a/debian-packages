# -*- mode: ruby -*-
# vi: set ft=ruby :

ARGV.each do|a|

  var = a.to_s

  puts ""
  puts "_______________________________________________________________________________________________"
  puts ""
  puts ""
  puts "#{var}"
  puts ""
  system "sh", "InstallStart/#{var}.sh"
  puts ""

end

  puts "_______________________________________________________________________________________________"

puts ""
puts ""
puts "Done."
puts ""
