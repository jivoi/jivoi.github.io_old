def jekyll(opts = '')
    sh 'rm -rf _site'
    sh 'jekyll ' + opts
end

desc "Build site using Jekyll"
task :build do
    jekyll
end

desc 'Build and start server with --auto'
task :server do
    jekyll '--server --auto'
end

desc 'Build and deploy'
task :deploy => :build do
    sh 'rm -f _posts/*.textile~'
    sh 'jekyll --pygments'
    sh 'git add .'
    sh 'git commit -m "blog"'
    sh 'git push -u origin master'
end


desc "Create a new blog post"
task :post do
  print "Please enter in the title of the blog post: "
  title = $stdin.gets.chomp.strip
  name = title.gsub(/\s+/, '-')
  name = name.gsub(/[^a-zA-Z0-9_-]/, "").downcase
  time = Time.now.strftime("%Y-%m-%d")
  File.open("_posts/#{time}-#{name}.textile", "w+") do |file|
    file.puts <<-EOF
--- 
title: #{title}
layout: post
syntax-highlighting: yes
excerpt:
tags:
- 
---
<p><img src='http://jivoi.github.com/images/blog/.jpg' alt='' /></p>

![Alt-text](URL "Img Title")

{% highlight bash %}
test
{% endhighlight %}

    EOF
  end
  puts "Created 'vi _posts/#{time}-#{name}.textile'"
  puts "Created 'gedit  _posts/#{time}-#{name}.textile'"
end
