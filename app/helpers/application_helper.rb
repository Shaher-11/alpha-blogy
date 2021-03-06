module ApplicationHelper

    def gravatar_for(user, options = { size: 80})
      email_address = user.email.downcase
      hash = Digest::MD5.hexdigest(email_address)
      size = options[:size]
      gravatar_url = "https://www.gravatar.com/avatar/#{hash}?d=wavatar"
      image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
    end

    def like_or_dislike_btn(article)
      like = Like.find_by(article: article, user: current_user)
      if like
        link_to("<i class='fas fa-heart h2 text-danger'></i>".html_safe, article_like_path(id: like.id, article_id: article.id), method: :delete)
      else
        link_to("<i class='fas fa-heart h2 text-dark'></i>".html_safe, article_likes_path(article_id: article.id), method: :post)
      end
    end

end














