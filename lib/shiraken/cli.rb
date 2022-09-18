require "shiraken"
require "thor"

module Shiraken
    class CLI < Thor
        desc "hello", "say 'hello, world!'"
        def hello
            puts "Hello, World!"
        end

        desc "github", "display GitHub Account page"
        def github
            puts "https://github.com/shirakurak"
        end
    end
end