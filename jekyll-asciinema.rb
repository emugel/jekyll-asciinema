module Jekyll
    class RenderAsciinemaTag < Liquid::Tag
        def initialize(tag_name, asciinema_id, tokens)
            super
            @asciinema_id = asciinema_id
        end

        def render(context)
            "<script type='text/javascript' src='https://asciinema.org/a/#{@asciinema_id}.js' id='asciicast-#{@asciinema_id}' async></script>"
        end
    end
end

Liquid::Template.register_tag('asciinema', Jekyll::RenderAsciinemaTag)
