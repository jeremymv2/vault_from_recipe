require 'chef/mixin/shell_out'
include Chef::Mixin::ShellOut

def thing_on?
  shell_out!('echo sam').stdout.chomp == 'sam' ? true : false
end

def the_password
  shell_out!('echo bar').stdout.chomp
end
