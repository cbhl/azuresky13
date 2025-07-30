# frozen_string_literal: true

# borrowed from clarkdave.net/2012/02/building-a-static-blog-with-nanoc/
require 'stringex'
require 'highline/import'
desc 'Create a new post'
task :new_post, :title do |_t, args|
  mkdir_p './content/posts'
  args.with_defaults(title: 'New Post')
  title = args.title
  filename = "./content/posts/#{Time.now.strftime('%Y-%m-%d')}-#{title.to_url}.md"

  if File.exist?(filename) && ask("#{filename} already exists. Want to overwrite?", %w[y n]) == ('n')
    abort('rake aborted!')
  end

  puts "Creating new post: #{filename}"
  open(filename, 'w') do |post|
    post.puts '---'
    post.puts "title: \"#{title}\""
    post.puts "created_at: #{Time.now}"
    post.puts 'kind: article'
    post.puts 'published: false'
    post.puts "---\n\n"
  end
end
