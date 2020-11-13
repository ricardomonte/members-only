module PostsHelper

  def list_in_index(post)
    content_tag(:ul, class: 'list-group') do
      post.each do |i|
        concat content_tag(:li, tags_for_list(i), class: 'list-group-item text-center')
      end
    end
  end

  def tags_for_list(post)
    (content_tag(:h5, post.title)) +
    (content_tag(:p, post.description)) +
    (content_tag(:p, "Revealed #{time_ago_in_words(post.created_at)} ago", class: 'blockquote-footer')) +
    if user_signed_in?
      (content_tag(:p, "This secret was revealed by #{post.user.name} (@#{post.user.username})", class: 'blockquote-footer'))
    end
    
  end
end
