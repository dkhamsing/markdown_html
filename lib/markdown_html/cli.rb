# Command line interface
module MarkdownHtml
  require 'markdown_html/version'
  require 'markdown_html/convert'

  OPTION_QUIET = 'quiet'

  class << self

    def cli
      q = make_option OPTION_QUIET
      quiet = ARGV.include? q

      puts "#{PRODUCT} #{VERSION}" unless quiet

      if ARGV.count == 0
        usage
        exit
      end

      argv = ARGV - [q]

      markdown_file = argv[0]
      html_file = argv[1]

      unless File.exist? markdown_file
        puts "#{markdown_file} does not exist"
        usage
        exit
      end

      html_file = 'index.html' if html_file.nil?

      convert markdown_file, html_file, quiet
    end

    def make_option(option)
      "--#{option}"
    end

    def usage
      puts "Usage: #{PRODUCT} <markdown file> [html file] [#{make_option OPTION_VERBOSE}]"
    end
  end
end
