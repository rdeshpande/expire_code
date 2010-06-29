
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name  'expire_code'
  authors  'Rohan Deshpande'
  email    'rohan.deshpande@gmail.com'
  url      'github.com/rdeshpande/expire_code'
}
