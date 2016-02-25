# Convert Markdown to HTML
module MarkdownHtml
  require 'redcarpet'

  class << self
    def convert(markdown_file, html_file, quiet = false)
      puts "Converting #{markdown_file} (md) to #{html_file} (html)" unless quiet
      c = File.read markdown_file

      puts 'README --------------------------------' unless quiet
      puts c unless quiet

      renderer = Redcarpet::Render::HTML
      markdown = Redcarpet::Markdown.new(renderer)
      html = markdown.render c

      puts 'HTML ----------------------------------' unless quiet
      puts html unless quiet

      File.write html_file, html
      puts "Converted #{markdown_file} to HTML, wrote #{html_file} :-)" unless quiet
    end
  end
end
