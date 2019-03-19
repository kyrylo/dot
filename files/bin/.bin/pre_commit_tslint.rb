#!/usr/bin/env ruby
#
# put this file into your path and use `<file> install` to add a new hook
# or use it as a binary to check changed files
require 'shellwords'

if ARGV == ['install']
  exec 'ln', '-sf', __FILE__, '.git/hooks/pre-commit'
else
  raise unless ARGV == []
end

changed = `git status --porcelain`.
  split("\n").
  map { |l| l.split(" ", 2) }.
  select { |status, _| ["A", "AM", "M"].include?(status) }.
  map { |_, file| file.delete('"') }

exit if changed.empty?

result = `npm run lint`
puts result unless $?.success?
exit $?.exitstatus
