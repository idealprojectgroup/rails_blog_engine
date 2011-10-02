atom_feed(:root_url => root_url) do |feed|
  feed.title t('rails_blog_engine.blog.title')
  feed.updated @posts.map(&:updated_at).sort.reverse.first
  @posts.each do |post|
    feed.entry(post) do |entry|
    end
  end
end
