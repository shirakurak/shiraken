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

        desc "howise", "let the brain solve the problem"
        def howise
            puts "今考えていることは？"
            input1 = STDIN.gets.chomp
            puts "----------"
            puts "どうすれば" + input1 + "〇〇か？"
            input2 = STDIN.gets.chomp
            puts "----------"
            puts "「どうすれば" + input1 + input2 + "か？」"
            puts "↑"
            task1 = STDIN.gets.chomp
            puts "----------"
            puts "どうすれば「" + task1 + "」を進められるか？"
        end
    end
end