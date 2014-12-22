# coding: utf-8

# http://railscasts.com/episodes/350-rest-api-versioning?language=ja&view=asciicast
module Moguera::Driver
  autoload :Base, 'moguera/driver/cli/base'

  class CLI < Thor
    class_option :version, aliases: '-v', type: :boolean

    def initialize(args = [], options = {}, config = {})
      super
      handle_version_request!(options.first)
    end

    desc "bind [URL]", "bind moguera"
    def bind(url)
      #TODO: bind: Moguera::Driver::Client.execute
      say url
    end

    desc "fire! [ID]", "publish post"
    def fire!(id)
      #TODO: fire!: publish post
      say id
    end

    %w(generator info update destroy).each do |cmd|
      desc "#{cmd} [COMMAND]", "commands for #{cmd}"
      subcommand cmd, Mogera::Driver.const_get(cmd.capitalize)
    end

    private

    def handle_version_request!(argument)
      if ['--version', '-v'].include?(argument)
        require 'moguera/driver/version'
        puts "Moguera Driver #{Moguera::Driver::VERSION}"
        exit(0)
      end
    end
  end

  class ARGVScrubber
    def initialize(argv = ARGV)
      @argv = argv
    end

    def prepare!
      #kargs = @argv[3..-1]
      #if args
      #  @argv[0..2] << Hash[*args.flat_map{|e| e.split(":") }]
      #end
      Hash[*@argv.flat_map{|e| e.split(":") }]
    rescue ArgumentError => ex
      puts "ERROR: #{ex.message}"
      nil
    end
  end
end
