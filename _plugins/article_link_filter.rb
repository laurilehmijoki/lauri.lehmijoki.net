module ArticleLinkCreatorFilter
  def create_article_link(post)
    """
    <span>
      <a href='#{post['url']}'>#{post['title']}</a> #{add_language_hint(post)}
    </span>
    """
  end

  private

  def add_language_hint(post)
    if post['categories'][0] == 'fi'
      "<span class='article-language-hint'> (in Finnish)</span>"
    end
  end
end

Liquid::Template.register_filter(ArticleLinkCreatorFilter)
