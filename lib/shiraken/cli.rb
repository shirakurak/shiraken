require "shiraken"
require "thor"

module Shiraken
    class CLI < Thor
        desc "hello", "say 'hello, world!'"
        def hello
            puts "Hello, World!"
        end
    end
end