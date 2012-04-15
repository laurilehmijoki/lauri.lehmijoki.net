require 'yaml'

module Jekyll

  # Reads YAML from a file and transforms its contents into Markdown
  class DictionaryListTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @dictionary_file = text
      @markdown = ""
      @yaml = YAML::load(`cat #{@dictionary_file}`)
    end

    def render(context)
      to_markdown
      @markdown
    end

    def to_markdown
      @yaml.each_key{ |key|
        header(key)
        origin(key)
        comment(key)
      }
    end

    def header(key)
        append "### #{key}"
    end

    def origin(key)
      append "- **Origin:** " + for_key(key, 'origin')
    end

    def comment(key)
      append "- **Comment:** " + for_key(key, 'comment')
    end

    def for_key(key, subkey)
      @yaml[key][subkey] if @yaml[key]
    end

    def append(string)
      @markdown += string + "\n\n"
    end
  end
end

Liquid::Template.register_tag('dictonarylist', Jekyll::DictionaryListTag)
