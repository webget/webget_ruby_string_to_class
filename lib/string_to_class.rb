# = Ruby String#to_class
#
# Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
# Copyright:: Copyright (c) 2009 Joel Parker Henderson
# License:: CreativeCommons License, Non-commercial Share Alike
# License:: LGPL, GNU Lesser General Public License
#
# Ruby String#to_class method to convert from a String to a class
#
# From Mirage at http://infovore.org/archives/2006/08/02/getting-a-class-object-in-ruby-from-a-string-containing-that-classes-name/
##

class String

 def to_class
  split('::').inject(Kernel) {|scope, const_name| scope.const_get(const_name)}
 end

end
