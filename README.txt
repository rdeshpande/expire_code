expires_at
    by Rohan Deshpande
    http://github.com/rdeshpande

== DESCRIPTION:

expires_at aims to help large development teams manage temporary code. No longer should you have to write:

# NOTE: Remove after 3/10!!!!
def some_code
...

Instead, use expires_at to fail your build if dead code still exists in the codebase, and/or have it warn you in production if the code isn't covered by tests (yet).

== FEATURES/PROBLEMS:

* Customized alert system for dead code
* Rails plugin for easy integration

== SYNOPSIS:

expires_at Time.parse('2009-01-01') do
  temporary_code
end

== REQUIREMENTS:

* None.

== INSTALL:

* sudo gem install expires_at

= Rails

* In RAILS_ROOT/config/environment.rb:

config.after_initialize do
  include ExpiresAt
end

== LICENSE:

(The MIT License)

Copyright (c) 2010 Rohan Deshpande

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
