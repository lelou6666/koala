<<<<<<< HEAD
begin
  require 'bundler/setup'
rescue LoadError
  puts 'Although not required, bundler is recommended for running the tests.'
end

# In Ruby 1.9.2 versions before patchlevel 290, the default Psych
# parser has an issue with YAML merge keys, which
# fixtures/mock_facebook_responses.yml relies heavily on.
#
# Anyone using an earlier version will see missing mock response
# errors when running the test suite similar to this:
#
# RuntimeError:
#   Missing a mock response for graph_api: /me/videos: source=[FILE]: post: with_token
#   API PATH: /me/videos?source=[FILE]&format=json&access_token=*
#
# For now, it seems the best fix is to just downgrade to the old syck YAML parser
# for these troubled versions.
#
# See https://github.com/tenderlove/psych/issues/8 for more details
YAML::ENGINE.yamler = 'syck' if RUBY_VERSION == '1.9.2' && RUBY_PATCHLEVEL < 290

# load custom RSpec matchers
require 'support/custom_matchers'
=======
# Quantify coverage
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
>>>>>>> refs/remotes/arsduo/master

# load the library
require 'koala'

<<<<<<< HEAD
# ensure consistent to_json behavior
# this must be required first so mock_http_service loads the YAML as expected
require 'support/ordered_hash'
require 'support/json_testing_fix'

# set up our testing environment
require 'support/mock_http_service'
require 'support/koala_test'

require 'vcr'
VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.default_cassette_options = { :record => :new_episodes }
  c.hook_into :faraday
end

=======
# Support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# set up our testing environment
>>>>>>> refs/remotes/arsduo/master
# load testing data and (if needed) create test users or validate real users
KoalaTest.setup_test_environment!

BEACH_BALL_PATH = File.join(File.dirname(__FILE__), "fixtures", "beach.jpg")

<<<<<<< HEAD
BEACH_BALL_PATH = File.join(File.dirname(__FILE__), "fixtures", "beach.jpg")
=======
RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    # This option should be set when all dependencies are being loaded
    # before a spec run, as is the case in a typical spec helper. It will
    # cause any verifying double instantiation for a class that does not
    # exist to raise, protecting against incorrectly spelt names.
    mocks.verify_doubled_constant_names = true
  end
end
>>>>>>> refs/remotes/arsduo/master
