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
      value = for_key(key, 'origin')
      append "- **Origin:** " + value unless value.empty?
    end

    def comment(key)
      value = for_key(key, 'comment')
      append "- **Comment:** " + value unless value.empty?
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
