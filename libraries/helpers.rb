require 'chef/mixin/powershell_out'
include Chef::Mixin::PowershellOut

def thing_on?
  powershell_out!('Write-Host "Hello, World!"').stdout.chomp == 'Hello, World!' ? true : false
end

def the_password
  powershell_out!('Write-Host "password"').stdout.chomp
end

puts the_password
