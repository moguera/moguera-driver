module Moguera::Driver
  class Base < Thor
    %w(post user category tag image).each do |cmd|
      desc cmd, 'Not yet implemented.'
      define_method(cmd) { raise "Not yet implemented." }
    end

    def self.banner(task, namespace = false, subcommand = true)
      super
    end
  end
end
