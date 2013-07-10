require 'ruby_parser'
require 'action_view'

class Flay
  
  @@plugins << 'erb'

  ##
  # Process erb template and parse the result. Returns the sexp of the parsed
  # ruby.
 
  def actionpack_erb file
    erb = File.read file
    src = Struct.new(:source, :mime_type, :type).new(erb, 'text/html', 'text/html')
    ruby = ActionView::Template::Handlers::ERB.call src
    begin
      RubyParser.new.process(ruby, file)
    rescue => e
      warn ruby if option[:verbose]
      raise e
    end
  end
end
