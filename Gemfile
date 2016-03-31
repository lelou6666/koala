source "https://rubygems.org"

group :development do
<<<<<<< HEAD
  gem 'debugger'
=======
  gem 'debugger', :platforms => [:mri_19]
  gem 'byebug', :platforms => [:mri_20, :mri_21]
>>>>>>> refs/remotes/arsduo/master
  gem "yard"
end

group :development, :test do
  gem "rake"
  gem "typhoeus" unless defined? JRUBY_VERSION
end

group :test do
<<<<<<< HEAD
  gem "rspec", '~> 3.0.0.beta1'
=======
  gem "rspec", '~> 3.4'
  gem "vcr"
  gem "webmock"
  gem "codeclimate-test-reporter", require: nil
>>>>>>> refs/remotes/arsduo/master
end

gem "jruby-openssl" if defined? JRUBY_VERSION

platforms :rbx do
  gem 'rubysl', '~> 2.0'         # if using anything in the ruby standard library
  gem 'psych'                    # if using yaml
  gem 'rubinius-developer_tools' # if using any of coverage, debugger, profiler
end

gemspec
