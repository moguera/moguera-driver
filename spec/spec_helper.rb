require "bundler/setup"
Bundler.require :default

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), %w(.. lib)))

require 'thor'

module Moguera
  module Driver
    autoload :CLI,          'moguera/driver/cli'
    autoload :ARGVScrubber, 'moguera/driver/cli'
    autoload :Generator,    'moguera/driver/cli/generator'
    autoload :Info,         'moguera/driver/cli/info'
    autoload :Update,       'moguera/driver/cli/update'
    autoload :Destroy,      'moguera/driver/cli/destroy'
  end
end

require 'moguera/driver'
require 'rspec'
require 'stringio'

RSpec.configure do |config|

  # Captures the output for analysis later
  #
  # @example Capture `$stderr`
  #
  # output = capture(:stderr) { $stderr.puts "this is captured" }
  #
  # @param [Symbol] stream `:stdout` or `:stderr`
  # @yield The block to capture stdout/stderr for.
  # @return [String] The contents of $stdout or $stderr
  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval("$#{stream}").string
    ensure
      eval("$#{stream} = #{stream.upcase}")
    end

    result
  end
end

class Hash
  def to_options
    self.flat_map {|k, v| ["--#{k}", v] }.flatten
  end
end
